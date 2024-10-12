import logging
from abc import ABC, abstractmethod
from typing import TypeVar, Type, Generic, Any, List
from uuid import UUID

from fastapi.encoders import jsonable_encoder
from motor.motor_asyncio import AsyncIOMotorClient
from sqlalchemy import select
from sqlalchemy.ext.asyncio import AsyncSession

from notification_service.models.base_model import BaseModel

ModelType = TypeVar("ModelType", bound=BaseModel)
CreateSchemaType = TypeVar('CreateSchemaType', bound=BaseModel)


class Repository(ABC):
    @abstractmethod
    async def get(self, *args, **kwargs):
        ...

    @abstractmethod
    async def post(self, *args, **kwargs):
        ...


class RepositoryMongo(Repository, Generic[ModelType, CreateSchemaType]):
    def __init__(
            self,
            model: Type[ModelType],
            client: AsyncIOMotorClient
    ):
        self._model = model
        self.client = client

    async def get(self, user_id: UUID) -> List[CreateSchemaType] or None:
        logging.info(self._model)
        return await self._model.find(self._model.user_id == str(user_id)).to_list()

    async def post(self):
        pass


class RepositoryPostgres(Repository, Generic[ModelType, CreateSchemaType]):
    def __init__(
            self,
            model: Type[ModelType],
            db: AsyncSession
    ):
        self._model = model
        self.db = db

    async def get(self, doc_id: Any) -> Type[ModelType] or None:
        statement = select(self._model).where(self._model.id == id)
        results = await self.db.execute(statement=statement)
        return results.scalar_one_or_none()

    async def post(
            self,
            obj_in: CreateSchemaType
    ):
        obj_in_data = jsonable_encoder(obj_in)
        db_obj = self._model(**obj_in_data)
        self.db.add(db_obj)
        await self.db.commit()
        return db_obj
