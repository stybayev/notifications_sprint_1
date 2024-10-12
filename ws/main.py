import asyncio
import logging
from fastapi import FastAPI
from fastapi.responses import ORJSONResponse
from contextlib import asynccontextmanager

from ws.core.config import JWTSettings
from ws.services.rabbitmq import RabbitMQConnection
from fastapi_jwt_auth import AuthJWT
from ws.api.v1.websocket import router as websocket_router
from ws.services.manager import ConnectionManager

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)
rabbitmq = RabbitMQConnection()


@asynccontextmanager
async def lifespan(app: FastAPI):
    AuthJWT.load_config(lambda: JWTSettings())
    app.state.manager = ConnectionManager()

    await rabbitmq.connect()
    consume_task = asyncio.create_task(rabbitmq.consume_messages(app.state.manager))

    yield

    consume_task.cancel()
    await rabbitmq.close()


app = FastAPI(
    docs_url="/api/ws/openapi",
    openapi_url="/api/ws/openapi.json",
    default_response_class=ORJSONResponse,
    lifespan=lifespan,
)

app.include_router(websocket_router)
