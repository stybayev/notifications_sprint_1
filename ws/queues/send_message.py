import aio_pika
import asyncio
import json

from ws.core.config import settings


async def send_message():
    connection = await aio_pika.connect_robust(settings.rabbitmq.rabbitmq_url)
    channel = await connection.channel()
    queue = await channel.declare_queue(settings.rabbitmq.queue_ws, durable=True)

    message = {
        "user_id": "3680d4f6-54b5-43b5-97c0-75dec1e375b1",
        "text": "Привет, это тестовое сообщение!"
    }

    await channel.default_exchange.publish(
        aio_pika.Message(body=json.dumps(message).encode()),
        routing_key=queue.name,
    )

    await connection.close()

asyncio.run(send_message())


