import uvicorn
import logging

from fastapi.responses import ORJSONResponse
from fastapi import FastAPI
from core.logger import LOGGING
from api.v1.notifications import router as router_notification

from core.config import settings
from dependencies.main import setup_dependencies

app = FastAPI(
    title=settings.project_name,
    description=settings.description,
    docs_url="/api/notification/openapi",
    openapi_url="/api/notification/openapi.json",
    default_response_class=ORJSONResponse
)

app.include_router(router_notification, prefix="/api/v1/notification")

setup_dependencies(app)

if __name__ == '__main__':
    uvicorn.run(
        'main:app',
        host=settings.uvicorn_host,
        port=settings.uvicorn_port,
        log_config=LOGGING,
        log_level=logging.DEBUG,
        reload=True,
    )