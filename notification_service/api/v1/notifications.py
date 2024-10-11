import sys
from http import HTTPStatus

from fastapi import APIRouter, Depends, HTTPException

from notification_service.models.event import Event
from notification_service.models.notification import NotificationHistory
from notification_service.schemas.notification import NotificationCreateDto
from notification_service.services.notifications import NotificationServiceABC

router = APIRouter()


@router.post("/", response_model=NotificationCreateDto)
async def post_event(
        *,
        service: NotificationServiceABC = Depends(),
        event: Event
) -> NotificationCreateDto or None:
    print(f"{event=}", file=sys.stderr)
    notification = await service.post_event(event)
    if not notification:
        raise HTTPException(
            status_code=HTTPStatus.BAD_REQUEST,
            detail='The request could not be added to the queue'
        )
    return notification


@router.get("/get_event_history", response_model=NotificationHistory)
async def get_notification_history(
        *,
        service: None,
) -> NotificationHistory or None:
    # TODO: здесь реализуем получение истории уведомлений.
    #  Надо решить какую бд будем использовать и реализовать репозиторий
    pass
