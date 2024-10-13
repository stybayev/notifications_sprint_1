import json
import os
from contextlib import asynccontextmanager

import aio_pika
from fastapi import FastAPI, HTTPException

from .schemas import WelcomeEmailRequest

RABBITMQ_URL = os.getenv("RABBITMQ_URL")
QUEUE_NAME = os.getenv("RABBITMQ_QUEUE")


@asynccontextmanager
async def lifespan(app: FastAPI):
    app.rabbitmq_connection = await aio_pika.connect_robust(RABBITMQ_URL)
    app.rabbitmq_channel = await app.rabbitmq_connection.channel()
    app.rabbitmq_queue = await app.rabbitmq_channel.declare_queue(QUEUE_NAME, durable=True)
    yield
    await app.rabbitmq_connection.close()


app = FastAPI(
    title="Email sender",
    lifespan=lifespan,
    docs_url="/api/email/openapi",
)


@app.post("/send-email/")
async def send_email(request: WelcomeEmailRequest):
    message = {
        "user_id": request.user_id,
        "template_id": request.template_id,
        "subject": request.subject
    }
    try:
        await app.rabbitmq_channel.default_exchange.publish(
            aio_pika.Message(
                body=json.dumps(message).encode(),
                delivery_mode=aio_pika.DeliveryMode.PERSISTENT
            ),
            routing_key=QUEUE_NAME
        )
        return {"message": "Email task has been added to the queue."}
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))
