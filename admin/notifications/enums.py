from enum import Enum


class BaseEnum(Enum):
    """
    Базовый класс для Enum
    """

    @classmethod
    def enum_to_choices(cls) -> list:
        """
        Метод создаёт список кортежей, где каждый кортеж содержит значение
        (item.value) и имя (item.name) каждого элемента перечисления.
        """
        return [(item.value, item.name) for item in cls]


class StatusType(BaseEnum):
    SENT: str = "sent"
    PENDING: str = "pending"
    FAILED: str = "failed"


class NotificationType(BaseEnum):
    PERSONAL: str = "personal"
    GROUP: str = "group"


class DeliveryMethod(BaseEnum):
    EMAIL: str = 'email'
    SMS: str = 'sms'
    PUSH: str = 'push'
