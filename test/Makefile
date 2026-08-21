all: 
	docker compose up --build -d

up: all

down: 
	docker compose down

stop:
	docker compose stop

fclean:
	docker rmi  $$(docker images -q)

.PHONY: all up down stop
