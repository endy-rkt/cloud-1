all: up

setup:
	rm -rf /home/trazanad/data
	mkdir -p /home/trazanad/data/db /home/trazanad/data/wordpress /home/trazanad/data/phpmyadmin
	chown -R trazanad:trazanad /home/trazanad/data
	
up:
	docker compose up --build -d

verbose:
	docker compose up --build

down:
	docker compose down

stop:
	docker compose stop

.PHONY: all up verbose down stop