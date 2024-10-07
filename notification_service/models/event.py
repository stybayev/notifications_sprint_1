import enum
from typing import List
from uuid import UUID

from pydantic import BaseModel


class EventContext(BaseModel):
    title: str
    text: str
    username: List[str]


class EventType(enum.Enum):
    personal = "PERSONAL"
    group = "GROUP"


class DeliveryMethod(enum.Enum):
    email = "email"
    sms = "sms"
    push = "push"


class Event(BaseModel):
    receiver: List[UUID]
    event_name: str  # slug
    event_type: str  # название
    context: EventContext
    type: EventType
    service: str
    delivery_method: DeliveryMethod
