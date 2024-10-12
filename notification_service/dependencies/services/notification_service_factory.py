from functools import cache

from fastapi import Depends
from motor.motor_asyncio import AsyncIOMotorClient
from sqlalchemy.ext.asyncio import AsyncSession

from notification_service.db.db import get_db_session
from notification_service.db.mongo import shard_collection
from notification_service.dependencies.registrator import add_factory_to_mapper
from notification_service.models.db_models import Notification, Templates, NotificationToUser
from notification_service.models.db_models import NotificationHistory
from notification_service.services.notifications import NotificationServiceABC, NotificationService, \
    NotificationRepository, TemplateRepository, NotificationToUserRepository, HistoryRepository


@add_factory_to_mapper(NotificationServiceABC)
@cache
def post_event_service(
        session: AsyncSession = Depends(get_db_session),
        client: AsyncIOMotorClient = Depends(shard_collection)
) -> NotificationService:
    return NotificationService(
        notification_repository=NotificationRepository(Notification, db=session),
        template_repository=TemplateRepository(Templates, db=session),
        notification_to_user_repository=NotificationToUserRepository(NotificationToUser, db=session),
        history_repository=HistoryRepository(NotificationHistory, client=client)
    )
