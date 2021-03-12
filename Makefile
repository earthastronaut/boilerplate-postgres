
build:
	docker-compose build

clean:
	docker-compose down --rmi all --remove-orphans --volumes

start:
	docker-compose up -d db
	sleep 3  # initialize
	docker-compose logs --tail 500 db

stop:
	docker-compose stop

psql:
	docker-compose exec db /app/bin/psql.sh

help:
	@echo "\nUSAGE: make <target> <VAR=VALUE>"
	@echo "\nTARGETS:\n"
	@grep -E "^[a-z,A-Z,0-9,-]+:.*" Makefile | cut -d : -f 1
	@echo "" 

.PHONY: build clean start stop help
.DEFAULT_GOAL=help
