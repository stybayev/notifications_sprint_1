import json
import logging
from typing import Annotated, List

from django_celery_beat.models import PeriodicTask, CrontabSchedule
from django.conf import settings
from django.contrib.auth import get_user_model
from django.contrib.auth.models import Group
from django.db import models
from notifications.enums import StatusType, NotificationType

User = get_user_model()

logger = logging.getLogger(__name__)


class Template(models.Model):
    slug = models.SlugField("slug шаблона", max_length=50, primary_key=True)
    title = models.CharField("Заголовок", max_length=250)
    description = models.CharField("Описание шаблона", max_length=250)
    content = models.TextField(
        "Контент шаблона",
        help_text="Текст шаблона письма - HTML страница или просто текст.",
    )

    class Meta:
        verbose_name = "Шаблон"
        verbose_name_plural = "Шаблоны"

    def __str__(self):
        return f"Шаблон: {self.title}"


class Notification(models.Model):
    template = models.ForeignKey("Template", on_delete=models.CASCADE)
    name = models.CharField("Название", max_length=50)
    type = models.CharField(
        "Тип рассылки",
        max_length=50,
        choices=NotificationType.enum_to_choices(),
        default=NotificationType.GROUP.value,
    )
    users = models.ManyToManyField(
        User, related_name="notifications", through="NotificationToUser"
    )
    groups = models.ManyToManyField(
        Group, related_name="notifications", through="NotificationToGroup"
    )

    scheduled_time = models.DateTimeField(
        "Время отправки", null=True, blank=True
    )
    is_recurring = models.BooleanField("Повторяющееся", default=False)
    recurrence_rule = models.CharField(
        "Правило повторения (Crontab)", max_length=100, null=True, blank=True,
        help_text="Введите crontab строку, например, '0 0 * * *' для ежедневной отправки в полночь.",
        default='* * * * *'
    )

    class Meta:
        verbose_name = "Уведомление"
        verbose_name_plural = "Уведомления"

    def __str__(self):
        return f"Уведомление: {self.name}"

    @property
    def recipients(self) -> User | List[User]:
        groups = self.groups.all()
        groups_users = []
        for group in groups:
            groups_users.extend([user for user in group.user_set.all()])
        return list(self.users.all()) + groups_users

    @property
    def recipients_ids(self) -> List[Annotated[str, "User's ids"]]:
        return [str(user.id) for user in self.recipients]

    def send(self) -> Annotated[int, "Status code"]:
        ids = (
            self.recipients_ids
            if self.type == NotificationType.GROUP.value
            else self.recipients_ids[0]
        )
        usernames = [user.get_full_name() for user in self.recipients]
        context = {
            "title": self.template.title,
            "text": self.template.content,
            "username": usernames
            if self.type == NotificationType.GROUP.value
            else usernames[0],
        }
        url = settings.EVENT_URL

        payload = {
            "receiver": ids,
            "event_name": self.template.slug,
            "event_type": self.name,
            "context": context,
            "type": self.type,
        }

        # response = requests.post(url, json=payload)

        # Заглушка вместо реального запроса
        logger.debug(f"Payload: {json.dumps(payload)}")

        class FakeResponse:
            def __init__(self, status_code: int):
                self.status_code = status_code

        # Имитируем успешный ответ
        response = FakeResponse(status_code=200)

        return response.status_code

    def schedule(self):
        from notifications.tasks import send_notification_task
        import json

        if self.scheduled_time:
            if self.is_recurring and self.recurrence_rule:
                crontab_parts = self.recurrence_rule.strip().split()
                if len(crontab_parts) == 5:
                    schedule, created = CrontabSchedule.objects.get_or_create(
                        minute=crontab_parts[0],
                        hour=crontab_parts[1],
                        day_of_month=crontab_parts[2],
                        month_of_year=crontab_parts[3],
                        day_of_week=crontab_parts[4],
                        timezone='UTC',
                    )
                    PeriodicTask.objects.update_or_create(
                        name=f'Notification_{self.id}',
                        defaults={
                            'crontab': schedule,
                            'task': 'notifications.tasks.send_notification_task',
                            'args': json.dumps([self.id]),
                        }
                    )
                else:
                    logger.error(f"Некорректная crontab строка: {self.recurrence_rule}")
            else:
                # Отложенная одноразовая задача
                send_notification_task.apply_async(
                    args=[self.id],
                    eta=self.scheduled_time
                )
        else:
            # Мгновенная отправка
            send_notification_task.delay(self.id)


class NotificationToUser(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    notification = models.ForeignKey(Notification, on_delete=models.CASCADE)

    retry_count = models.IntegerField(verbose_name="Количество повторных попыток", default=0)
    status = models.CharField(
        verbose_name="Статус",
        max_length=10,
        choices=StatusType.enum_to_choices(),
        default=StatusType.PENDING.value,
    )
    last_update = models.DateTimeField(
        verbose_name="Последнее обновление", auto_now=True
    )


class NotificationToGroup(models.Model):
    group = models.ForeignKey(Group, on_delete=models.CASCADE)
    notification = models.ForeignKey(Notification, on_delete=models.CASCADE)
