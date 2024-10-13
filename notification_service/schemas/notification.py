from typing import List
from uuid import UUID

from pydantic import BaseModel
import enum


class Status(enum.Enum):
    sent = "sent"
    pending = "pending"
    failed = "failed"


class DeliveryMethod(enum.Enum):
    email = "email"
    sms = "sms"
    push = "push"

class NotificationCreateDto(BaseModel):
    template_id: str
    name: str
    type: str
    delivery_method: DeliveryMethod


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
