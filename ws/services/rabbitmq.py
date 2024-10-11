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
            settings.rabbitmq.queue, durable=True
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

        Ожидается JSON с параметрами:
        {
          "receiver": ["user_id1", "user_id2"],
          "event_name": "string",
          "event_type": "string",
          "context": {
            "title": "string",
            "text": "string",
            "username": ["string"]
          },
          "type": "PERSONAL",
          "service": "string",
          "delivery_method": "email"
        }
        """
        async with self.queue.iterator() as queue_iter:
            async for message in queue_iter:
                async with message.process():
                    try:
                        message_data = json.loads(message.body.decode())
                        receivers = message_data.get('receiver', [])
                        event_name = message_data.get('event_name', '')
                        event_type = message_data.get('event_type', '')
                        context = message_data.get('context', {})
                        title = context.get('title', '')
                        text = context.get('text', '')
                        username = context.get('username', [])

                        # Формируем сообщение для отправки
                        structured_message = {
                            "event_name": event_name,
                            "event_type": event_type,
                            "context": {
                                "title": title,
                                "text": text,
                                "username": username
                            },
                            "type": message_data.get('type', ''),
                            "service": message_data.get('service', ''),
                            "delivery_method": message_data.get('delivery_method', '')
                        }

                        # Сериализуем сообщение в JSON строку
                        message_to_send = json.dumps(structured_message)

                        for user_id in receivers:
                            await manager.send_message(user_id, message_to_send)
                            logger.debug(f"Отправлено сообщение пользователю {user_id}: {message_to_send}")

                    except Exception as e:
                        logger.error(f"Ошибка при обработке сообщения: {e}")
