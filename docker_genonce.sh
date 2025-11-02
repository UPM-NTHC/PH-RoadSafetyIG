#!/bin/bash
# docker_genonce.sh - Run the IG generation in Docker

# Build and run the container
echo "Building and running the FHIR IG Generator in Docker..."
docker-compose up --build --abort-on-container-exit

echo "Generation complete. Output is in the output/ directory."