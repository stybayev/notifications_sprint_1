import logging
import os

from pydantic_settings import BaseSettings

class WorkerSettings(BaseSettings):
    rabbit_url: str = os.getenv("RABBITMQ_URL", "amqp://guest:guest@rabbitmq:5672//")
    queue_name: str = os.getenv("RABBITMQ_QUEUE", "welcome_message")
    auth_service_url: str = os.getenv("AUTH_SERVICE_URL", "http://35.156.176.160/api/v1/auth/users/user-details/")
    redis_url: str = os.getenv("REDIS_URL", "redis://localhost:6379")
    RETRY_INTERVAL: int = 5 * 60
    MAX_RETRIES: int = 3

def setup_logging():
    logging.basicConfig(
        level=logging.INFO,
        format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
        handlers=[
            logging.StreamHandler(),
            logging.FileHandler("worker.log")
        ]
    )

settings = WorkerSettings()