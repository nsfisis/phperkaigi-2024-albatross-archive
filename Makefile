DOCKER_COMPOSE := docker compose
ALBATROSS_BASE_PATH := /phperkaigi/2024/golf

.PHONY: up
up:
	${DOCKER_COMPOSE} up -d

.PHONY: down
down:
	${DOCKER_COMPOSE} down

.PHONY: build
build:
	${DOCKER_COMPOSE} build

.PHONY: logs
logs:
	${DOCKER_COMPOSE} logs

.PHONY: build-assets
build-assets:
	cp -f assets/favicon.svg archive/assets/
	ALBATROSS_BASE_PATH=$(ALBATROSS_BASE_PATH) npm run build
