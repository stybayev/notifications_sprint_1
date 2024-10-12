import json
import logging
from datetime import timedelta
from typing import List

import redis.asyncio as redis
from core.config import setup_logging, settings

setup_logging()
logger = logging.getLogger(__name__)

class RedisClient:
    def __init__(self, redis_url: str):
        self.redis_url = redis_url
        self.redis = None

    async def initialize(self):
        """Инициализация пула соединений Redis."""
        try:
            self.redis = redis.Redis.from_url(self.redis_url, decode_responses=True)
            await self.redis.ping() # Проверка соединения
            logger.info("Подключение к Redis установлено.")
        except Exception as e:
            logger.error(f"Не удалось подключиться к Redis: {e}")
            raise

    async def close(self):
        """Закрытие пула соединений Redis."""
        if self.redis:
            self.redis.close()
            await self.redis.wait_closed()
            logger.info("Соединение с Redis закрыто.")

    async def save_failed_message(self, message_data: dict, attempt: int = 0):
        """
        Сохранение неудачного сообщения в Redis для повторной попытки.

        :param message_data: Данные сообщения.
        :param attempt: Текущая попытка отправки.
        """
        try:
            user_id = message_data.get('user_id')
            key = f"failed_message:{user_id}"
            value = json.dumps({
                "message": message_data,
                "attempt": attempt
            })
            await self.redis.set(key, value, ex=timedelta(minutes=5))  # Сообщение хранится 5 минут
            logger.info(f"Сообщение сохранено в Redis с ключом {key}. Попытка: {attempt}")
        except Exception as e:
            logger.error(f"Ошибка при сохранении сообщения в Redis: {e}")

    async def get_failed_messages(self)->List:
        """
        Получение всех неудачных сообщений из Redis.

        :return: Список ключей неудачных сообщений.
        """
        try:
            keys = await self.redis.keys("failed_message:*")
            return keys
        except Exception as e:
            logger.error(f"Ошибка при получении ключей из Redis: {e}")
            return []

    async def get_message(self, key: str) -> None:
        """
        Получение сообщения по ключу из Redis.

        :param key: Ключ сообщения.
        :return: Данные сообщения или None.
        """
        try:
            value = await self.redis.get(key)
            if value:
                return json.loads(value)
            return None
        except Exception as e:
            logger.error(f"Ошибка при получении сообщения из Redis по ключу {key}: {e}")
            return None

    async def delete_message(self, key: str):
        """
        Удаление сообщения по ключу из Redis.

        :param key: Ключ сообщения.
        """
        try:
            await self.redis.delete(key)
            logger.info(f"Сообщение с ключом {key} удалено из Redis.")
        except Exception as e:
            logger.error(f"Ошибка при удалении сообщения из Redis по ключу {key}: {e}")
