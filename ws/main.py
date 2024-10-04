from typing import Dict
from fastapi import FastAPI, WebSocket, WebSocketDisconnect
from fastapi.responses import ORJSONResponse
import aio_pika

app = FastAPI(
    docs_url="/api/ws/openapi",
    openapi_url="/api/ws/openapi.json",
    default_response_class=ORJSONResponse,
    swagger_ui_oauth2_redirect_url="/api/v1/ws/users/login",
)

# @app.on_event("startup")
# async def startup():
#     # Подключение к RabbitMQ
#     app.state.rabbitmq_connection = await aio_pika.connect_robust("amqp://guest:guest@rabbitmq/")
#     app.state.rabbitmq_channel = await app.state.rabbitmq_connection.channel()
#     # Дополнительная инициализация
#
#
# @app.on_event("shutdown")
# async def shutdown():
#     # Закрытие соединения с RabbitMQ
#     await app.state.rabbitmq_channel.close()
#     await app.state.rabbitmq_connection.close()


peoples: Dict[str, WebSocket] = {}


async def welcome(websocket: WebSocket) -> str:
    await websocket.send_text('Представьтесь!')
    name = await websocket.receive_text()
    await websocket.send_text('Чтобы поговорить, напишите "<имя>: <сообщение>". Например: Ира: купи хлеб.')
    await websocket.send_text('Посмотреть список участников можно командой "?"')
    peoples[name.strip()] = websocket
    return name


@app.websocket("/ws")  # ws://localhost/ws
async def websocket_endpoint(websocket: WebSocket):
    await websocket.accept()
    try:
        name = await welcome(websocket)
        while True:
            message = (await websocket.receive_text()).strip()
            if message == '?':
                await websocket.send_text(', '.join(peoples.keys()))
                continue
            else:
                try:
                    to, text = message.split(': ', 1)
                    if to in peoples:
                        await peoples[to].send_text(f'Сообщение от {name}: {text}')
                    else:
                        await websocket.send_text(f'Пользователь {to} не найден')
                except ValueError:
                    await websocket.send_text('Неверный формат сообщения. Используйте "<имя>: <сообщение>".')
    except WebSocketDisconnect:
        if name in peoples:
            del peoples[name]
        await websocket.close()
