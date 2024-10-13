import sys
from http import HTTPStatus
from typing import List
from uuid import UUID

from fastapi import APIRouter, Depends, HTTPException

from notification_service.models.event import Event
from notification_service.schemas.notification import NotificationCreateDto, NotificationHistoryDto
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


@router.get("/get_event_history", response_model=List[NotificationHistoryDto])
async def get_notification_history(
        *,
        service: NotificationServiceABC = Depends(),
        user_id: UUID
) -> List[NotificationHistoryDto] or None:
    notification_history = await service.get_event_history(user_id)
    if not notification_history:
        raise HTTPException(
            status_code=HTTPStatus.NOT_FOUND,
            detail="There are no notifications"
        )
    return notification_history
