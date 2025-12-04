DOCKER_COMPOSE := docker compose

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
	# docker run --rm -v "$$(pwd)"/esbuild.mjs:/app/esbuild.mjs -v "$$(pwd)"/assets:/app/assets -v "$$(pwd)"/archive/assets:/app/archive/assets --env-file "$$(pwd)"/.env.local albatross-build-assets npm run build
