up:
	docker compose up -d
build:
	docker compose build --no-cache --force-rm
remake:
	@make destroy
	@make init
stop:
	docker compose stop
down:
	docker compose down --remove-orphans
restart:
	@make down
	@make up
destroy:
	docker compose down --rmi all --volumes --remove-orphans
destroy-volumes:
	docker compose down --volumes --remove-orphans
ps:
	docker compose ps
logs:
	docker compose logs
localstack:
	docker compose exec localstack bash
glue:
	docker compose exec glue bash
jupyter:
	open http://127.0.0.1:8888/lab

