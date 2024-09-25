from celery import shared_task
import logging

logger = logging.getLogger(__name__)


@shared_task
def send_notification_task(notification_id):
    from notifications.models import Notification
    try:
        notification = Notification.objects.get(id=notification_id)
        status_code = notification.send()
        if status_code == 200:
            logger.info(f"Уведомление '{notification}' успешно отправлено.")
        else:
            logger.error(f"Не удалось отправить уведомление '{notification}'. Код состояния: {status_code}")
    except Notification.DoesNotExist:
        logger.error(f"Уведомление с id {notification_id} не существует.")
    except Exception as e:
        logger.exception(f"Ошибка при отправке уведомления с id {notification_id}: {e}")
