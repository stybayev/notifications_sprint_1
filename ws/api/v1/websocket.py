from fastapi import APIRouter, WebSocket, WebSocketDisconnect, Depends
from fastapi_jwt_auth import AuthJWT
from ws.services.manager import ConnectionManager

router = APIRouter()


def get_manager(websocket: WebSocket) -> ConnectionManager:
    """
    Функция для получения менеджера соединений из websocket.
    """
    return websocket.app.state.manager


@router.websocket("/ws")
async def websocket_endpoint(websocket: WebSocket,
                             Authorize: AuthJWT = Depends(),
                             manager: ConnectionManager = Depends(get_manager)) -> None:
    """
    Обработка входящих соединений WebSocket
    """
    token = websocket.headers.get('Authorization')

    if not token:
        await websocket.close(code=1008)
        return

    if token.startswith('Bearer '):
        token = token[7:]

    try:
        Authorize._token = token
        Authorize.jwt_required()
        user_id = Authorize.get_jwt_subject()
    except Exception:
        await websocket.close(code=1008)
        return

    await websocket.accept()
    await manager.connect(user_id, websocket)

    try:
        while True:
            data = await websocket.receive_text()
            # Обработка входящих сообщений от клиента
            await handle_client_message(user_id, data, manager)
    except WebSocketDisconnect:
        await manager.disconnect(user_id)
    except Exception:
        await manager.disconnect(user_id)


async def handle_client_message(user_id: str,
                                data: str,
                                manager: ConnectionManager) -> None:
    """
    Обработка входящих сообщений от клиента
    """
    pass
