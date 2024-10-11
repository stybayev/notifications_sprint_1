import json
import logging
import aio_pika
from ws.core.config import settings
from ws.services.manager import ConnectionManager

logger = logging.getLogger(__name__)


class RabbitMQConnection:
    def __init__(self):
        self.connection = None
        self.channel = None
        self.queue = None

    async def connect(self) -> None:
        """
        Подключение к RabbitMQ
        """
        self.connection = await aio_pika.connect_robust(settings.rabbitmq.rabbitmq_url)
        self.channel = await self.connection.channel()
        self.queue = await self.channel.declare_queue(
            settings.rabbitmq.queue_ws, durable=True
        )
        logger.info("Подключено к RabbitMQ")

    async def close(self) -> None:
        """
        Закрытие соединения с RabbitMQ
        """
        if self.channel:
            await self.channel.close()
        if self.connection:
            await self.connection.close()
        logger.info("Соединение с RabbitMQ закрыто")

    async def consume_messages(self, manager: ConnectionManager) -> None:
        """
        Подключение к очереди и обработка сообщений

        Ожидается в качестве типа данных json с параметром user_id и text,
        например: {"user_id": "3680d4f6-54b5-43b5-97c0-75dec1e375b1", "text": "Привет, это тестовое сообщение!"}
        """
        async with self.queue.iterator() as queue_iter:
            async for message in queue_iter:
                async with message.process():
                    try:
                        message_data = json.loads(message.body.decode())
                        user_id = str(message_data.get('user_id'))
                        text = message_data.get('text')
                        await manager.send_message(user_id, text)
                    except Exception as e:
                        logger.error(f"Ошибка при обработке сообщения: {e}")
