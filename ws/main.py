import asyncio
import logging
from fastapi import FastAPI, WebSocket, WebSocketDisconnect, Depends
from fastapi.responses import ORJSONResponse
from contextlib import asynccontextmanager

from ws.core.config import JWTSettings
from ws.queues.rabbitmq import RabbitMQConnection
from fastapi_jwt_auth import AuthJWT

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)
rabbitmq = RabbitMQConnection()


@asynccontextmanager
async def lifespan(app: FastAPI):
    AuthJWT.load_config(lambda: JWTSettings())
    await rabbitmq.connect()
    consume_task = asyncio.create_task(rabbitmq.consume_messages(connected_users))

    yield

    consume_task.cancel()
    await rabbitmq.close()


app = FastAPI(
    docs_url="/api/ws/openapi",
    openapi_url="/api/ws/openapi.json",
    default_response_class=ORJSONResponse,
    lifespan=lifespan,
)
connected_users = {}


@app.websocket("/ws")
async def websocket_endpoint(websocket: WebSocket,
                             Authorize: AuthJWT = Depends()):
    token = websocket.headers.get('Authorization')

    if not token:
        await websocket.close(code=1008)
        return

    if token.startswith('Bearer '):
        token = token[7:]

    try:
        Authorize._token = token
        Authorize.jwt_required()
        user_id = Authorize.get_jwt_subject()
    except Exception as e:
        logger.info(f'Error: {e}')
        await websocket.close(code=1008)
        return

    await websocket.accept()
    connected_users[user_id] = websocket

    try:
        while True:
            data = await websocket.receive_text()
            # Обработка входящих сообщений от клиента, если необходимо
    except WebSocketDisconnect:
        del connected_users[user_id]
    except Exception as e:
        del connected_users[user_id]
        await websocket.close()
