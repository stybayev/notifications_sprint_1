from functools import cache

from fastapi import Depends
from sqlalchemy.ext.asyncio import AsyncSession
from db.db import get_db_session
from dependencies.registrator import add_factory_to_mapper
from models.db_models import Notification, Templates, NotificationToUser
from services.notifications import NotificationServiceABC, NotificationService, \
    NotificationRepository, TemplateRepository, NotificationToUserRepository


@add_factory_to_mapper(NotificationServiceABC)
@cache
def post_event_service(
    session: AsyncSession = Depends(get_db_session),
) -> NotificationService:
    return NotificationService(
        notification_repository=NotificationRepository(Notification, db=session),
        template_repository=TemplateRepository(Templates, db=session),
        notification_to_user_repository=NotificationToUserRepository(NotificationToUser, db=session)
    )