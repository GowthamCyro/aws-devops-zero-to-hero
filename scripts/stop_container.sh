#!/bin/bash

echo "Stopping container if running..."
CONTAINER_ID=$(docker ps -q)

if [ -n "$CONTAINER_ID" ]; then
    echo "Stopping container $CONTAINER_ID.."
    docker stop "$CONTAINER_ID"
    docker rm "$CONTAINER_ID"
else
    echo "No container running"
fi
