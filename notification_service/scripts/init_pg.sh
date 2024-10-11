#!/bin/bash

export PGPASSWORD=$POSTGRES_PASSWORD
echo "i'm running!!!"
echo "$DEBUG"
echo "$PGPASSWORD"
if [ "$DEBUG" == "1" ]; then
    echo "Applying init.sql..."
    psql -U $POSTGRES_USER -d $POSTGRES_DB -h $POSTGRES_HOST -f "/notification_service/scripts/init_pg.sql"
fi
exec "$@"