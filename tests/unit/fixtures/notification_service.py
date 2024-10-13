import pytest_asyncio
from httpx import AsyncClient
from notification_service.db.db import get_db_session
from notification_service.main import app as notification_app
from typing import Generator, Any


@pytest_asyncio.fixture(name='notification_client', scope='session')
async def fixture_notification_client(notification_service_override_dependencies):
    """
    Фикстура для создания клиента AsyncClient.
    """
    async with AsyncClient(app=notification_app, base_url='http://localhost/api/v1/notification/') as client:
        yield client


@pytest_asyncio.fixture(name='notification_service_override_dependencies', scope='session')
def fixture_notification_service_override_dependencies(mock_db_session: Any) -> Generator[None, None, None]:
    notification_app.dependency_overrides[get_db_session] = lambda: mock_db_session
    yield
    notification_app.dependency_overrides = {}
