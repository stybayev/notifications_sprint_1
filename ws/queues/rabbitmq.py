from ws.core.config import settings
import asyncio
import aio_pika


class RabbitMQConnection:
    def __init__(self):
        self.connection: aio_pika.RobustConnection = None
        self.channel: aio_pika.RobustChannel = None
        self.queue: aio_pika.RobustQueue = None
        self.consume_task: asyncio.Task = None

    async def connect(self) -> None:
        """
        Подключение к RabbitMQ
        """
        self.connection = await aio_pika.connect_robust(settings.rabbitmq.rabbitmq_url)

        self.channel = await self.connection.channel()

        self.queue = await self.channel.declare_queue(
            settings.rabbitmq.queue_ws, durable=True
        )

    async def close(self) -> None:
        """
        Отключение от RabbitMQ
        """
        if self.consume_task:
            self.consume_task.cancel()
            await self.consume_task

        if self.channel:
            await self.channel.close()

        if self.connection:
            await self.connection.close()
