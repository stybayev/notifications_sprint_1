from typing import List
from uuid import UUID

from pydantic import BaseModel

from notification_service.models.db_models import Status


class NotificationCreateDto(BaseModel):
    template_id: str
    name: str
    type: str


class NotificationToUserDto(BaseModel):
    user_id: UUID
    notification_id: int
    retry_count: int
    status: Status


class NotificationHistoryDto(BaseModel):
    user_id: UUID
    template_id: str
    title: str
    text: str
    username: List[str]
