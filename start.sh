#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull kavanapc/simple-python-flaskapp

# Run the Docker image as a container
docker run -d -p 5000:5000 kavanapc/simple-python-flaskapp