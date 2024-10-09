from pydantic import BaseSettings


class RabbitMQSettings(BaseSettings):
    """
    Настройки RabbitMQ
    """
    default_user: str = ...
    default_pass: str = ...
    hostname: str = ...
    port: int = ...
    queue_ws: str = ...

    @property
    def rabbitmq_url(self) -> str:
        return f"amqp://{self.default_user}:{self.default_pass}@{self.hostname}:{self.port}/"

    class Config:
        env_file = ".env"
        env_prefix = "RABBITMQ_"


class JWTSettings(BaseSettings):
    """
    Настройки JWT
    """
    authjwt_secret_key: str = ...
    authjwt_algorithm: str = ...
    authjwt_access_token_expires: int = ...
    authjwt_refresh_token_expires: int = ...
    authjwt_user_claims: bool = True

    class Config:
        env_file = ".env"
        env_prefix = "JWT_"


class Settings(BaseSettings):
    """
    Общие настройки приложения
    """
    # App
    project_name: str
    uvicorn_host: str
    uvicorn_port: int

    # JWT
    jwt: JWTSettings = JWTSettings()

    # RabbitMQ
    rabbitmq: RabbitMQSettings = RabbitMQSettings()

    class Config:
        env_file = ".env"
        env_prefix = "WS_"


settings = Settings()
