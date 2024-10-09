import json
import logging

from ws.core.config import settings
import aio_pika

logger = logging.getLogger(__name__)


class RabbitMQConnection:
    def __init__(self):
        self.connection: aio_pika.RobustConnection = None
        self.channel: aio_pika.RobustChannel = None
        self.queue: aio_pika.RobustQueue = None

    async def connect(self) -> None:
        """
        Подключение к RabbitMQ
        """
        self.connection = await aio_pika.connect_robust(settings.rabbitmq.rabbitmq_url)
        self.channel = await self.connection.channel()
        self.queue = await self.channel.declare_queue(settings.rabbitmq.queue_ws, durable=True)
        logger.info("Подключено к RabbitMQ")

    async def close(self) -> None:
        """
        Отключение от RabbitMQ
        """
        if self.channel:
            await self.channel.close()

        if self.connection:
            await self.connection.close()
        logger.info("Соединение с RabbitMQ закрыто")

    async def consume_messages(self, connected_users: dict):
        """
        Потребляет сообщения из очереди RabbitMQ и отправляет их подключенным пользователям.
        """
        async with self.queue.iterator() as queue_iter:
            async for message in queue_iter:
                async with message.process():
                    try:
                        # Предполагаем, что сообщение в формате JSON
                        message_data = json.loads(message.body.decode())
                        user_id = str(message_data.get('user_id'))
                        text = message_data.get('text')

                        if user_id in connected_users:
                            websocket = connected_users[user_id]
                            await websocket.send_text(text)
                            logger.info(f"Отправлено сообщение пользователю {user_id}")
                        else:
                            logger.info(f"Пользователь {user_id} не подключен")
                    except Exception as e:
                        logger.error(f"Ошибка при обработке сообщения: {e}")
