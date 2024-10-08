from fastapi import FastAPI, WebSocket, WebSocketDisconnect, Depends
from fastapi.responses import ORJSONResponse
from contextlib import asynccontextmanager

from ws.queues.rabbitmq import RabbitMQConnection
from async_fastapi_jwt_auth import AuthJWT

rabbitmq = RabbitMQConnection()


@asynccontextmanager
async def lifespan(app: FastAPI):
    await rabbitmq.connect()

    yield

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
    if token is None:
        await websocket.close(code=1008)
        return

    try:
        await Authorize.jwt_required()
        user_id = await Authorize.get_jwt_subject()
    except Exception as e:
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
# @app.websocket("/ws")  # ws://localhost/ws
# async def websocket_endpoint(websocket: WebSocket):
#     await websocket.accept()
#
#     while True:
#         data = await websocket.receive_text()
#         if data == "ping":
#             await websocket.send_text("pong")
#         else:
#             await websocket.close()
