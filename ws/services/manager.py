from fastapi import WebSocket
import logging
from starlette.websockets import WebSocketState

logger = logging.getLogger(__name__)


class ConnectionManager:
    def __init__(self):
        self.connected_users = {}

    async def connect(self, user_id: str, websocket: WebSocket) -> None:
        """
        Подключение пользователя
        """
        self.connected_users[user_id] = websocket
        logger.info(f"Пользователь {user_id} подключен")

    async def disconnect(self, user_id: str) -> None:
        """
        Отключение пользователя
        """
        websocket = self.connected_users.pop(user_id, None)
        if websocket:
            if websocket.client_state == WebSocketState.CONNECTED:
                await websocket.close()
            logger.info(f"Пользователь {user_id} отключен")

    async def send_message(self, user_id: str, message: str) -> None:
        """
        Отправка сообщения пользователю
        """
        websocket = self.connected_users.get(user_id)
        if websocket:
            await websocket.send_text(message)
            logger.info(f"Сообщение отправлено пользователю {user_id}")
        else:
            logger.info(f"Пользователь {user_id} не подключен")
