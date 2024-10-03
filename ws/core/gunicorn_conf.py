import json
import logging
import multiprocessing
from pydantic.v1 import BaseSettings


class GunicornSettings(BaseSettings):
    workers_per_core: float = 1.0
    web_concurrency: int = None
    host: str = "0.0.0.0"
    port: int = 8084
    bind: str = None
    log_level: str = "info"
    keepalive: int = 120
    errorlog: str = "-"

    class Config:
        env_file = ".env"
        env_prefix = "WS_"

    @property
    def bind_address(self):
        if self.bind:
            return self.bind
        return f"{self.host}:{self.port}"

    @property
    def worker_count(self):
        cores = multiprocessing.cpu_count()
        default_web_concurrency = self.workers_per_core * cores
        if self.web_concurrency:
            return max(self.web_concurrency, 1)
        return max(int(default_web_concurrency), 2)


# Создаем экземпляр класса GunicornSettings
gunicorn_settings = GunicornSettings()

# Конфигурационные переменные Gunicorn
loglevel = gunicorn_settings.log_level
workers = gunicorn_settings.worker_count
bind = gunicorn_settings.bind_address
keepalive = gunicorn_settings.keepalive
errorlog = gunicorn_settings.errorlog

# Для логирования и отладки
log_data = {
    "loglevel": loglevel,
    "workers": workers,
    "bind": bind,
    "workers_per_core": gunicorn_settings.workers_per_core,
    "host": gunicorn_settings.host,
    "port": gunicorn_settings.port,
}
logging.info(json.dumps(log_data))
