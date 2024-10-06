import pytest_asyncio
from unittest.mock import AsyncMock, MagicMock
from sqlalchemy.ext.asyncio import AsyncSession


@pytest_asyncio.fixture(name='mock_db_session', scope='session')
async def fixture_mock_db_session():
    """
    Фикстура для создания мока асинхронной сессии базы данных.
    """
    session = MagicMock(spec=AsyncSession)
    session.add = MagicMock(side_effect=lambda x: setattr(x, 'id', 1))
    session.commit = AsyncMock()
    session.refresh = AsyncMock()
    session.execute = AsyncMock()
    yield session
    await session.close()
