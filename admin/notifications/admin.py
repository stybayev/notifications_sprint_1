import logging
from http import HTTPStatus
import os
from django.contrib import admin, messages
from notifications.models import Notification
from notifications.models import Template as TemplateModel
from notifications.tasks import send_notification_task
import sentry_sdk
from sentry_sdk import capture_message

logger = logging.getLogger(__name__)
sentry_sdk.init(dsn=str(os.environ.get('SENTRY_SDK_DSN')), )


class NotificationAdminUsersInline(admin.TabularInline):
    model = Notification.users.through
    extra = 0
    raw_id_fields = ("user",)
    verbose_name = "Пользователь"
    verbose_name_plural = "Пользователи"


class NotificationAdminGroupsInline(admin.TabularInline):
    model = Notification.groups.through
    extra = 0
    raw_id_fields = ("group",)
    verbose_name = "Группа"
    verbose_name_plural = "Группы"


@admin.register(Notification)
class NotificationAdmin(admin.ModelAdmin):
    inlines = (NotificationAdminUsersInline, NotificationAdminGroupsInline)
    raw_id_fields = ("template",)
    actions = ("send_notification",)

    @admin.action(description="Отправить уведомление пользователям")
    def send_notification(self, request, queryset):
        for notification in queryset:
            logger.info(
                f"Постановка в очередь отправки уведомления {notification} для пользователей {notification.recipients}"
            )
            capture_message(
                f"Постановка в очередь отправки уведомления {notification} для пользователей {notification.recipients}",
                level="info")
            send_notification_task.delay(notification.id)
            self.message_user(
                request, f"{notification} поставлено в очередь на отправку", messages.SUCCESS
            )


@admin.register(TemplateModel)
class TemplateAdmin(admin.ModelAdmin):
    pass
