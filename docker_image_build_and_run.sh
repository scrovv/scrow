#!/bin/bash

# Build and push the Docker image
docker build -t my-image .
docker tag my-image:latest <your-docker-username>/my-image:latest
docker push <your-docker-username>/my-image:latest

# Run the application with "make run" commands
cd /path/to/top-level/directory
./run.sh
