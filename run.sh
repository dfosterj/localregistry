#!/bin/bash
# Create data directory if it doesn't exist
mkdir -p ./data/registry-data/

docker run -d -p 5001:5000 --restart always \
	-v "$(pwd)/data/registry-data/:/var/lib/registry" \
	-v "$(pwd)/data/config.yaml:/etc/docker/registry/config.yml" \
	--name localregistry registry:2
