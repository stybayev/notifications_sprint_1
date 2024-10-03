from typing import Union
from fastapi.responses import ORJSONResponse
from fastapi import FastAPI
from contextlib import asynccontextmanager


# from websockets.core.config import settings

@asynccontextmanager
async def lifespan(app: FastAPI):
    yield


app = FastAPI(
    # title=settings.project_name,
    docs_url="/api/ws/openapi",
    openapi_url="/api/ws/openapi.json",
    default_response_class=ORJSONResponse,
    lifespan=lifespan,
    swagger_ui_oauth2_redirect_url="/api/v1/ws/users/login",
)


@app.get("/")
def read_root():
    return {"Hello": "World"}


@app.get("/items/{item_id}")
def read_item(item_id: int, q: Union[str, None] = None):
    return {"item_id": item_id, "q": q}
