SHELL := bash

.PHONY: install
install:
	poetry install

.PHONY: lint
lint:
	poetry check --lock
	poetry run ruff check .
	poetry run ruff format . --check

.PHONY: format
format:
	poetry run ruff check . --fix
	poetry run ruff format .
