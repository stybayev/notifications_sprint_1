from beanie import init_beanie
from motor.motor_asyncio import AsyncIOMotorClient

from notification_service.core.config import settings
from notification_service.models.db_models import NotificationHistory


async def shard_collection():
    """
    Функция шардирования и создания коллекций.
    """
    client = AsyncIOMotorClient(settings.mongo_db.url)
    await client.admin.command("enableSharding", settings.mongo_db.default_database)
    db = client[settings.mongo_db.default_database]
    collection_names = await db.list_collection_names()
    if settings.mongo_db.collection not in collection_names:
        await db.create_collection(settings.mongo_db.collection)

    await init_beanie(database=db, document_models=[NotificationHistory])
    yield client
    client.close()
