from abc import ABC, abstractmethod

import sqlalchemy.exc
import os
import json
from models.db_models import Notification, NotificationToUser, Templates
from schemas.notification import NotificationCreateDto, NotificationToUserDto
from uuid import UUID
from models.event import Event
from services.base import RepositoryPostgres
from fastapi.encoders import jsonable_encoder
import logging
from models.db_models import Status
from aio_pika import connect, Message


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

    @staticmethod
    async def send_to_queue(event: Event) -> None:
        connection = await connect(
            host=os.getenv("RABBITMQ_HOSTNAME"),
            port=int(os.getenv("RABBITMQ_PORT")),
            login=os.getenv("RABBITMQ_DEFAULT_USER"),
            password=os.getenv("RABBITMQ_DEFAULT_PASS")
        )
        async with connection:
            channel = await connection.channel()
            await channel.default_exchange.publish(
                Message(
                    body=json.dumps(jsonable_encoder(event)).encode(),
                    delivery_mode=2
                ),
                routing_key=os.getenv('RABBITMQ_QUEUE'),
            )

    async def post_event(self, event: Event) -> NotificationCreateDto or None:
        notification_create_dto = NotificationCreateDto(
            template_id=event.event_name,
            name=event.event_type,
            type=event.type.value,
        )
        if event.service != 'admin_notifications':
            try:
                notification = await self.notification_repository.post(obj_in=notification_create_dto)
            except sqlalchemy.exc.IntegrityError as err:
                logging.error("The event could not be accepted")
                logging.error(err)
                return
            for receiver_id in event.receiver:
                notification_to_user_dto = NotificationToUserDto(
                    user_id=receiver_id,
                    notification_id=notification.id,
                    retry_count=0,
                    status=Status("pending"),
                )
                await self.notification_to_user_repository.post(obj_in=notification_to_user_dto)
            logging.info('Success added to database')
        await self.send_to_queue(event)
        logging.info('Success added to queue')
        return notification_create_dto

    async def get_event_history(self, user_id: UUID):
        pass