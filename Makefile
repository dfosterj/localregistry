# Default target
.PHONY: all
all: help

# Run the Docker container
.PHONY: run
run:
	bash run.sh

# Stop the Docker container
.PHONY: stop
stop:
	docker stop localregistry

# Remove the Docker container
.PHONY: rm
rm:
	docker rm localregistry

# Stop and remove the Docker container
.PHONY: kill
kill:
	docker stop localregistry || true
	docker rm localregistry || true

# Open a shell in the running Docker container
.PHONY: shell
shell:
	docker exec -ti localregistry sh

# View Docker Logs
.PHONY: logs
logs:
	docker logs localregistry

# Show help message
.PHONY: help
help:
	@echo "Available commands:"
	@echo "  make run     - Run the Docker registry container"
	@echo "  make stop    - Stop the Docker registry container"
	@echo "  make rm      - Remove the Docker registry container"
	@echo "  make kill    - Stop and remove the Docker registry container"
	@echo "  make shell   - Open a shell in the running container"
	@echo "  make logs    - View Docker registry logs"
