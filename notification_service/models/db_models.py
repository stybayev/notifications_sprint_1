import enum
import uuid

from sqlalchemy import Column, Integer, DateTime, UUID, ForeignKey, String, Text, Boolean, BigInteger
from sqlalchemy.sql import func

from notification_service.db.db import Base



class Notification(Base):
    __tablename__ = 'notifications_notification'
    id = Column(BigInteger, primary_key=True, autoincrement=True)
    name = Column(String(50), nullable="False")
    type = Column(String(50), nullable="False")
    template_id = Column(String(50), ForeignKey("notifications_template.slug"), nullable=False)
    is_recurring = Column(Boolean, nullable=False, default=False)
    recurrence_rule = Column(String(100))
    scheduled_time = Column(DateTime(timezone=True))
    delivery_method = Column(String(50), nullable="False")


class NotificationToUser(Base):
    __tablename__ = 'notifications_notificationtouser'

    id = Column(BigInteger, primary_key=True, autoincrement=True)
    retry_count = Column(Integer, nullable="False")
    status = Column(String(50), nullable="False")
    last_update = Column(
        DateTime(timezone=True),
        nullable="False",
        server_default=func.now(),
        onupdate=func.now(),
        default=func.now()
    )
    notification_id = Column(
        BigInteger,
        ForeignKey("notifications_notification.id"),
        nullable="False"
    )
    user_id = Column(
        UUID(as_uuid=True),
        ForeignKey("users_user.id"),
        nullable="False"
    )


class Templates(Base):
    __tablename__ = "notifications_template"

    slug = Column(String(50), nullable="False", primary_key=True)
    title = Column(String(250), nullable="False")
    description = Column(String(250), nullable="False")
    content = Column(Text, nullable="False")


class User(Base):
    __tablename__ = "users_user"

    id = Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    is_receiving = Column(Boolean)
    email = Column(String)
    timezone = Column(DateTime(timezone=True))
