from uuid import UUID
import enum

from pydantic import BaseModel
from typing import List
from datetime import datetime


class EventContext(BaseModel):
    title: str
    text: str
    username: str

class EventType(enum.Enum):
    personal = "personal"
    group = "group"

class DeliveryMethod(enum.Enum):
    email = "email"
    sms = "sms"
    push = "push"

class Event(BaseModel):
    receiver: List[UUID]
    event_name: str # slug
    event_type: str # название
    context: EventContext
    type: EventType
    service: str
    delivery_method: DeliveryMethod