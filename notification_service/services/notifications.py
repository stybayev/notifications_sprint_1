from abc import ABC, abstractmethod

import sqlalchemy.exc
from models.db_models import Notification, NotificationToUser, Templates
from schemas.notification import NotificationCreateDto, NotificationToUserDto
from uuid import UUID
from models.event import Event
from services.base import RepositoryPostgres
import logging
from models.db_models import Status
from datetime import datetime


class NotificationRepository(RepositoryPostgres[Notification, NotificationCreateDto]):
    ...

class NotificationToUserRepository(RepositoryPostgres[NotificationToUser, NotificationToUserDto]):
    ...

class TemplateRepository(RepositoryPostgres[Templates, None]):
    ...


class NotificationServiceABC(ABC):
    @abstractmethod
    async def post_event(self, event: Event) -> NotificationCreateDto:
        ...

    @abstractmethod
    async def get_event_history(self, user_id: UUID) -> Notification: # // TODO сделать пагинационную модель
        ...


class NotificationService(NotificationServiceABC):
    def __init__(
            self,
            notification_repository: NotificationRepository,
            notification_to_user_repository: NotificationToUserRepository,
            template_repository: TemplateRepository
    ):
        self.notification_repository = notification_repository
        self.notification_to_user_repository = notification_to_user_repository
        self.template_repository = template_repository


    async def post_event(self, event: Event) -> NotificationCreateDto or None:
        notification_create_dto = NotificationCreateDto(
            template_id=event.event_name,
            name=event.event_type,
            type=event.type.value
        )
        if event.service != 'admin_notification':

            try:
                notification = await self.notification_repository.post(obj_in=notification_create_dto)
            except sqlalchemy.exc.IntegrityError:
                logging.error("The event could not be accepted")
                return
            for receiver_id in event.receiver:
                notification_to_user_dto = NotificationToUserDto(
                    user_id=receiver_id,
                    notification_id=notification.id,
                    retry_count=0,
                    status=Status("pending"),
                )
                await self.notification_to_user_repository.post(obj_in=notification_to_user_dto)

        return notification_create_dto

    async def get_event_history(self, user_id: UUID):
        pass