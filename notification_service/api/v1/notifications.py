from http import HTTPStatus
from fastapi import APIRouter, Depends, HTTPException
import logging
from models.event import Event
from models.notification import NotificationHistory
from services.notifications import NotificationServiceABC
from schemas.notification import NotificationCreateDto

router = APIRouter()


@router.post("/{post_event}", response_model=NotificationCreateDto)
async def post_event(
        *,
        service: NotificationServiceABC = Depends(),
        event: Event
) -> NotificationCreateDto or None:
    notification = await service.post_event(event)
    if not notification:
        raise HTTPException(
            status_code=HTTPStatus.BAD_REQUEST,
            detail='The request could not be added to the queue'
        )
    print(notification)
    logging.info(notification)
    return notification

@router.get("/{get_event_history}", response_model=NotificationHistory)
async def get_notification_history(
        *,
        service: None,
) -> NotificationHistory or None:
    # TODO: здесь реализуем получение истории уведомлений.
    #  Надо решить какую бд будем использовать и реализовать репозиторий
    pass


