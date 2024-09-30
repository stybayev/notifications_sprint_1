import os
from logging import config as logging_config
from pydantic import BaseSettings, Field
from core.logger import LOGGING


class DataBaseSettings(BaseSettings):
    host: str = Field(default="db", env="POSTGRES_HOST")
    port: int = Field(default=5432, env="POSTGRES_PORT")
    user: str = Field(default="postgres", env="POSTGRES_USER")
    password: str = Field(default="postgres", env="POSTGRES_PASSWORD")
    db: str = Field(default="postgres", env="POSTGRES_DB")

    @property
    def url(self):
        return f'postgresql+asyncpg://{self.user}:{self.password}@{self.host}:{self.port}/{self.db}'


class Settings(BaseSettings):
    project_name: str = Field(default="Notification Service")
    description: str = Field(
        default="A service for receiving events. Writes them to the database and add them to the RabbitMQ queue."
    )
    uvicorn_host: str = Field(default="0.0.0.0", env="UVICORN_HOST")
    uvicorn_port: int = Field(default=8000, env="UVICORN_PORT")
    db = DataBaseSettings()
    log_sql_queries: bool = False
    class Config:
        env_file = ".env"


# Создаем экземпляр класса Settings для хранения настроек
settings = Settings()

# Применяем настройки логирования
logging_config.dictConfig(LOGGING)

# Корень проекта
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
