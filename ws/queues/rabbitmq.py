import os
import json
import asyncio
import aio_pika
import logging
from typing import Callable, Dict, Any

logger = logging.getLogger(__name__)


class RabbitMQConnection:
    def __init__(self):
        self.connection: aio_pika.RobustConnection = None
        self.channel: aio_pika.RobustChannel = None
        self.queue: aio_pika.RobustQueue = None
        self.consume_task: asyncio.Task = None

    async def connect(self):
        rabbitmq_user = os.getenv('RABBITMQ_DEFAULT_USER', 'guest')
        rabbitmq_password = os.getenv('RABBITMQ_DEFAULT_PASS', 'guest')
        rabbitmq_host = os.getenv('RABBITMQ_HOSTNAME', 'localhost')
        rabbitmq_port = os.getenv('RABBITMQ_PORT', '5672')
        rabbitmq_queue = os.getenv('RABBITMQ_QUEUE_WS', 'notifications.websocket')

        rabbitmq_url = f"amqp://{rabbitmq_user}:{rabbitmq_password}@{rabbitmq_host}:{rabbitmq_port}/"

        # Устанавливаем соединение
        self.connection = await aio_pika.connect_robust(rabbitmq_url)
        logger.info("Соединение с RabbitMQ установлено.")

        # Открываем канал
        self.channel = await self.connection.channel()
        logger.info("Канал RabbitMQ открыт.")

        # Объявляем очередь
        self.queue = await self.channel.declare_queue(
            rabbitmq_queue, durable=True
        )
        logger.info(f"Очередь '{rabbitmq_queue}' объявлена.")

    async def start_consuming(self, message_handler: Callable[[Dict[str, Any]], None]):
        async def process_message(message: aio_pika.IncomingMessage):
            async with message.process():
                try:
                    data = json.loads(message.body.decode())
                    await message_handler(data)
                except Exception as e:
                    logger.error(f"Ошибка при обработке сообщения: {e}")

        # Запускаем потребление сообщений
        self.consume_task = asyncio.create_task(self.queue.consume(process_message))
        logger.info("Потребление сообщений запущено.")

    async def close(self):
        if self.consume_task:
            self.consume_task.cancel()
            await self.consume_task
            logger.info("Задача потребления сообщений отменена.")

        if self.channel:
            await self.channel.close()
            logger.info("Канал RabbitMQ закрыт.")

        if self.connection:
            await self.connection.close()
            logger.info("Соединение с RabbitMQ закрыто.")
