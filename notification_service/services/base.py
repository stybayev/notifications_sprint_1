from abc import ABC, abstractmethod
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy import select
from fastapi.encoders import jsonable_encoder
import logging
from models.base_model import BaseModel
from datetime import datetime
from typing import TypeVar, Type, Generic, Any

ModelType = TypeVar("ModelType", bound=BaseModel)
CreateSchemaType = TypeVar('CreateSchemaType', bound=BaseModel)



class Repository(ABC):
    @abstractmethod
    async def get(self, *args, **kwargs):
        ...

    @abstractmethod
    async def post(self, *args, **kwargs):
        ...



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

