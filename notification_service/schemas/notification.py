from pydantic import BaseModel
from uuid import UUID
from models.db_models import Status
from datetime import datetime


class NotificationCreateDto(BaseModel):
    template_id: str
    name: str
    type: str
    is_recurring: bool
    recurrence_rule: str
    scheduled_time: datetime

class NotificationToUserDto(BaseModel):
    user_id: UUID
    notification_id: int
    retry_count: int
    status: Status