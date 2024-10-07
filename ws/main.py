from typing import Dict, Any
from fastapi import FastAPI, WebSocket, WebSocketDisconnect
from fastapi.responses import ORJSONResponse
import logging
from contextlib import asynccontextmanager

from ws.queues.rabbitmq import RabbitMQConnection

app = FastAPI(
    docs_url="/api/ws/openapi",
    openapi_url="/api/ws/openapi.json",
    default_response_class=ORJSONResponse,
)

# Настраиваем логирование
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

peoples: Dict[str, WebSocket] = {}

# Создаем экземпляр класса RabbitMQConnection
rabbitmq = RabbitMQConnection()


async def message_handler(data: Dict[str, Any]):
    user_id = data.get('user_id')
    content = data.get('content')
    websocket = peoples.get(user_id)
    if websocket:
        await websocket.send_text(content)
        logger.info(f"Сообщение отправлено пользователю {user_id}")
    else:
        logger.warning(f"Пользователь {user_id} не в сети. Сообщение не доставлено.")


@asynccontextmanager
async def lifespan(app: FastAPI):
    # Подключаемся к RabbitMQ
    await rabbitmq.connect()

    # Запускаем потребление сообщений
    await rabbitmq.start_consuming(message_handler)

    yield  # Работа приложения

    # Закрываем соединение с RabbitMQ
    await rabbitmq.close()


app = FastAPI(
    docs_url="/api/ws/openapi",
    openapi_url="/api/ws/openapi.json",
    default_response_class=ORJSONResponse,
    lifespan=lifespan,
)


@app.websocket("/ws")  # ws://localhost/ws
async def websocket_endpoint(websocket: WebSocket):
    await websocket.accept()
