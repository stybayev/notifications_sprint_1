from uuid import UUID

from pydantic import BaseModel


class WelcomeEmailRequest(BaseModel):
    user_id: str
    template_id: str
    subject: str
