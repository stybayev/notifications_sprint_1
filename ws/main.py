from fastapi import FastAPI, WebSocket, WebSocketDisconnect
from fastapi.responses import ORJSONResponse
from contextlib import asynccontextmanager

from ws.queues.rabbitmq import RabbitMQConnection

app = FastAPI(
    docs_url="/api/ws/openapi",
    openapi_url="/api/ws/openapi.json",
    default_response_class=ORJSONResponse,
)

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


@app.websocket("/ws")  # ws://localhost/ws
async def websocket_endpoint(websocket: WebSocket):
    await websocket.accept()

    while True:
        data = await websocket.receive_text()
        if data == "ping":
            await websocket.send_text("pong")
        else:
            await websocket.close()
