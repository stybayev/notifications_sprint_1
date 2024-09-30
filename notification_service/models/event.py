from uuid import UUID
import enum

from pydantic import BaseModel
from typing import List


class EventContext(BaseModel):
    title: str
    text: str
    username: str
    type: str

class EventType(enum.Enum):
    personal = "personal"
    group = "group"

class Event(BaseModel):
    receiver: List[UUID]
    event_name: str # slug
    event_type: str # название
    context: EventContext
    type: EventType
    service: str