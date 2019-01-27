.DEFAULT_GOAL := usage

up:
	docker-compose up

build:
	docker-compose build

down:
	docker-compose down

mix-install:
	docker-compose run web bash -c "mix deps.get"

migrate:
	docker-compose run web bash -c "mix ecto.migrate"


setup:
	docker-compose run web bash -c "mix deps.compile && mix ecto.create && mix ecto.migrate"

console:
	docker-compose run web iex -S mix phoenix.server

bash:
	docker-compose run web /bin/bash

