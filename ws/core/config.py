import os
from pydantic.v1 import BaseSettings

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

    class Config:
        env_file = ".env"
        env_prefix = "WS_"
