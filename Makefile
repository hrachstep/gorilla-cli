.PHONY: build deploy run stop

build:
	docker build -t gorilla-cli-image .

deploy:
	docker compose up -d

run:
	@echo "Entering the container, to run prompts type for example: 'gorilla \"what is my OS version?\"'. Type 'exit' to leave the container."
	docker exec -it gorilla-cli-container /bin/bash

stop:
	docker compose down
