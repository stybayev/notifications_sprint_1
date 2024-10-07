import pytest_asyncio
from unittest.mock import AsyncMock, patch

@pytest_asyncio.fixture(name='mock_rabbit', scope='session')
async def fixture_mock_rabbit():
    """
    Фикстура для создания мока отправки в очередь RabbitMQ.
    """
    with patch(
            "notification_service.services.notifications.NotificationService.send_to_queue",
            new_callable=AsyncMock
    ) as mock:
        mock.return_value = None
        yield mock