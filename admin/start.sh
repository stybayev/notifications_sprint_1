#!/bin/bash

set -euo pipefail

# Дождемся, пока база данных будет готова
while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
  echo "Waiting for the database at $POSTGRES_HOST:$POSTGRES_PORT..."
  sleep 0.1
done
echo "Database $POSTGRES_HOST:$POSTGRES_PORT is up and running!"

python manage.py collectstatic --no-input
python manage.py migrate

# Запускаем сервер приложения взависимости от переменной окружения DJANGO_ENV
echo "DJANGO_ENV: $DJANGO_ENV"
if [[ "$DJANGO_ENV" == "WEBSOCKET" ]]; then
  echo "Running Daphne Server"
  daphne -b 0.0.0.0 -p 8080 core.asgi:application
else
  echo "Running Gunicorn Server"
  gunicorn --bind :8080 --timeout 90 --workers 2 \
    --access-logfile - --error-logfile - \
    core.wsgi:application
fi
