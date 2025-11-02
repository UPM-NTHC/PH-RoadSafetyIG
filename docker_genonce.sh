#!/bin/bash
# docker_genonce.sh - Run the IG generation in Docker

# Build and run the container
echo "Building and running the FHIR IG Generator in Docker..."
docker-compose up --build --abort-on-container-exit

if [ $? -eq 0 ]; then
    echo "Generation complete. Output is in the output/ directory."
else
    echo "Docker build or run failed."
    exit 1
fi