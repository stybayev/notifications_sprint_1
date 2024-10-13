run:
	docker-compose up --build

stop:
	docker-compose down

create_user:
	docker exec -it notifications_sprint_1_django_admin_1 python manage.py createsuperuser

psql-conn:
	psql -h 127.0.0.1 -U postgres -d postgres

clear:
	docker system prune
	docker volume prune

run-mongo:
	docker-compose -f docker-compose.mongo.yml up --build

stop-mongo:
	docker-compose -f docker-compose.mongo.yml down