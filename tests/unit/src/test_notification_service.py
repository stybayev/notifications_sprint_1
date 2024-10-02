import pytest
from httpx import AsyncClient

@pytest.mark.asyncio
async def test_post_event(
        notification_client: AsyncClient,
        mock_db_session,
        notification_service_override_dependencies
):
    payload = {
        "receiver": [
            '8f80ef88-1865-4ea5-bb39-f664423506f2',
            'd99b0789-a833-432b-94ef-4f1c0eea731a'
        ],
        "event_name": "slug",
        "event_type": "welcome",
        "context": {
            "title": "Welcome to service",
            "text": "Dear User, we are glad to welcome "
                    "you to our platform. Here is what you need to get started",
            "username": ["John Smith", "Jenny Doe"]
        },
        "type": "GROUP",
        "delivery_method": "email"
    }
    response = await notification_client.post('/', json=payload)
    assert response.status_code == 200
    data = response.json()
    assert data['template_id'] == "slug"
    assert data['name'] == 'welcome'
    assert data['type'] == 'GROUP'
