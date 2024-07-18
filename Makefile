.PHONY: install
install:
    poetry install

.PHONY: ruff
ruff:
    poetry run ruff format .
	poetry run ruff check . --fix

.PHONY: ruffcheck
ruffcheck:
    @echo "Checking ruff..."
    poetry run ruff format . --check
	poetry run ruff check .

.PHONY: poetrycheck
poetrycheck:
    poetry check --lock

.PHONY: pyformatcheck
pyformatcheck: poetrycheck ruffcheck

.PHONY: lint
lint: pyformatcheck

.PHONY: format
format: ruff 

SHELL := bash