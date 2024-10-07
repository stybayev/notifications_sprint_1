import uvicorn
import logging
import pika
import os

from fastapi.responses import ORJSONResponse
from fastapi import FastAPI
from notification_service.core.config import settings
from notification_service.core.logger import LOGGING
from notification_service.api.v1.notifications import router as router_notification
from notification_service.dependencies.main import setup_dependencies

app = FastAPI(
    title=settings.project_name,
    description=settings.description,
    docs_url="/api/notification/openapi",
    openapi_url="/api/notification/openapi.json",
    default_response_class=ORJSONResponse
)

app.include_router(router_notification, prefix="/api/v1/notification")

setup_dependencies(app)

def create_queue():
    connection = pika.BlockingConnection(
        pika.ConnectionParameters(
            os.getenv('RABBITMQ_HOSTNAME'),
            os.getenv("RABBITMQ_PORT"),
            '/',
            pika.PlainCredentials(
                os.getenv('RABBITMQ_DEFAULT_USER'), os.getenv('RABBITMQ_DEFAULT_PASS')
            )
        )
    )
    channel = connection.channel()
    channel.queue_declare(
        queue=os.getenv('RABBITMQ_QUEUE'),
        durable=True
    )
    logging.info('Queue for notifications created.')
    connection.close()

if __name__ == '__main__':
    create_queue()
    uvicorn.run(
        'main:app',
        host=settings.uvicorn_host,
        port=settings.uvicorn_port,
        log_config=LOGGING,
        log_level=logging.DEBUG,
        reload=True,
    )