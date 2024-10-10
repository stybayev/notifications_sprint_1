#!/bin/sh

set -e

# Проверяем окружение и запускаем соответствующий сервер
echo "FASTAPI_ENV: $FASTAPI_ENV"
if [ "$FASTAPI_ENV" = "production" ]; then
    echo "Starting the production server"
    exec gunicorn --worker-class uvicorn.workers.UvicornWorker --config ws/core/gunicorn_conf.py ws.main:app
else
    echo "Starting the development server"
    exec uvicorn --reload --host=${WS_UVICORN_HOST:-0.0.0.0} --port=${WS_UVICORN_PORT:-8084} ws.main:app
fi
