import asyncio
import json
import logging
import os

import aio_pika
import httpx
from app.email_sender import send_email, init_smtp, close_smtp
from core.config import setup_logging, settings

from redis_client import RedisClient

setup_logging()
logger = logging.getLogger(__name__)

access_token = os.getenv("ACCESS_TOKEN",
                         "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI0ODhmMDg1Yi1iYjQ4LTQyYmMtYWU3Ny0yNzc3YWFlODMwMzkiLCJpYXQiOjE3Mjg3Mzk3NTksIm5iZiI6MTcyODczOTc1OSwianRpIjoiN2JlNDczYWItZWNmNC00ODc0LWJhZjUtZDNkMWYwY2Y4MWNmIiwiZXhwIjoxNzI4OTEyNTU5LCJ0eXBlIjoiYWNjZXNzIiwiZnJlc2giOnRydWUsImlkIjoiNDg4ZjA4NWItYmI0OC00MmJjLWFlNzctMjc3N2FhZTgzMDM5Iiwicm9sZXMiOltdLCJmaXJzdF9uYW1lIjoidGVzdE5hbWUiLCJsYXN0X25hbWUiOiJ0ZXN0TGFzdE5hbWUifQ.JhbPshGxXOEYIJtDsNQgZQj0dM502MtmrbNOmP_cDmA")
headers = {
    "Authorization": f"Bearer {access_token}"
}

# Инициализация Redis клиента
redis_client = RedisClient(redis_url=settings.redis_url)


async def fetch_user_data(user_id: str) -> dict:
    """Получение данных пользователя по user_id с внешнего сервиса."""
    try:
        async with httpx.AsyncClient() as client:
            response = await client.get(f"{settings.auth_service_url}{user_id}") #, headers=headers)
            response.raise_for_status()
            user_data = response.json()
            return user_data
    except httpx.HTTPStatusError as exc:
        logger.error(f"Ошибка запроса: {exc.response.status_code} {exc.response.text}")
        raise
    except Exception as e:
        logger.error(f"Не удалось получить данные пользователя: {e}")
        raise


async def process_message_retry(message_data: dict, attempt: int, redis_key: str):
    """Обработка повторной отправки сообщения."""
    try:
        user_id = "488f085b-bb48-42bc-ae77-2777aae83039" # TODO подставить своего пользователя для тестов
        """

        user_id = data.get('user_id')

        """
        subject = message_data.get('subject')

        # Получение данных пользователя
        user_data = await fetch_user_data(user_id)

        # Контекст для шаблона
        context = {
            "login": user_data.get("login", "User"),
            "first_name": user_data.get("first_name", user_data.get("login", "")),
            "last_name": user_data.get("last_name", "")
        }

        # Отправка письма
        await send_email(
            to_email=user_data["email"],
            subject=subject,
            template_name="welcome.html",
            context=context
        )
        logger.info(f"Повторная отправка письма успешно выполнена на {user_data['email']}")

        # Удаление сообщения из Redis после успешной отправки
        await redis_client.delete_message(redis_key)

    except Exception as e:
        logger.error(f"Ошибка при повторной отправке сообщения: {e}")
        if attempt < settings.MAX_RETRIES:
            await redis_client.save_failed_message(message_data, attempt=attempt)
        else:
            logger.error(
                f"Максимальное количество попыток достигнуто для {message_data['user_id']}, удаление сообщения.")


async def retry_failed_messages():
    """Попытка повторной отправки сообщений, сохраненных в Redis."""
    keys = await redis_client.get_failed_messages()
    for key in keys:
        data = await redis_client.get_message(key)
        if data:
            message_data = data['message']
            attempt = data['attempt']

            if attempt < settings.MAX_RETRIES:
                logger.info(f"Повторная отправка сообщения для {message_data['user_id']}, попытка {attempt + 1}")
                await process_message_retry(message_data, attempt + 1, key)
            else:
                logger.info(
                    f"Максимальное количество попыток достигнуто для {message_data['user_id']}, удаление сообщения.")
                await redis_client.delete_message(key)


async def process_message(message: aio_pika.IncomingMessage):
    logger.info(f"Получено сообщение: {message}")
    async with message.process():
        try:
            body = message.body.decode()
            data = json.loads(body)
            logger.info(f"{data=}")

            user_id = "488f085b-bb48-42bc-ae77-2777aae83039" # TODO подставить своего пользователя для тестов
            """
            
            user_id = data.get('user_id')
            
            """
            subject = data.get('subject')

            user_data = await fetch_user_data(user_id)

            # Контекст для шаблона
            context = {
                "login": user_data.get("login", "User"),
                "first_name": user_data.get("first_name", user_data.get("login", "")),
                "last_name": user_data.get("last_name", "")
            }

            # Отправка письма
            await send_email(
                to_email=user_data["email"],
                subject=subject,
                template_name="welcome.html",
                context=context
            )
            logger.info(f"Письмо успешно отправлено на {user_data['email']}")

        except Exception as e:
            logger.error(f"Ошибка обработки сообщения: {e}")
            await redis_client.save_failed_message(data)


async def main():
    await redis_client.initialize()

    await init_smtp()

    try:
        connection = await aio_pika.connect_robust(settings.rabbit_url)
        logger.info("Подключение к RabbitMQ установлено.")
    except Exception as e:
        logger.error(f"Не удалось подключиться к RabbitMQ: {e}")
        return

    async with connection:
        try:
            channel = await connection.channel()
            queue = await channel.declare_queue(settings.queue_name, durable=True)
            logger.info(f"Очередь '{settings.queue_name}' объявлена.")
        except Exception as e:
            logger.error(f"Ошибка при объявлении очереди: {e}")
            await connection.close()
            return

        await queue.consume(process_message)
        logger.info(f" [*] Воркер запущен и слушает очередь '{settings.queue_name}'")

        # Таймер для проверки Redis каждые 5 минут
        try:
            while True:
                await retry_failed_messages()
                await asyncio.sleep(settings.RETRY_INTERVAL)
        except asyncio.CancelledError:
            pass
        finally:
            await close_smtp()
            await redis_client.close()
            logger.info("SMTP пул и соединение Redis закрыты.")


if __name__ == "__main__":
    try:
        asyncio.run(main())
        logger.info("Воркер запущен")
    except KeyboardInterrupt:
        logger.info("Воркер остановлен")
    except Exception as e:
        logger.error(f"Неожиданная ошибка: {e}")
