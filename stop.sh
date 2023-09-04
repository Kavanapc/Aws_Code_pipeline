#!/bin/bash
set -e

# Stop the running container (if any)


# Get the container IDs using docker ps and awk
container_ids=$(docker ps -q)

# Check if any containers are running
if [ -n "$container_ids" ]; then
    # Stop and remove all running containers
    docker stop $container_ids
    docker rm $container_ids
    echo "Stopped and removed running containers."
else
    echo "No running containers found."
fi


