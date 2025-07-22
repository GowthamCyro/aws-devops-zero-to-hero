#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull gowthamvarma12/flask-app1:latest

# Run the Docker image as a container
docker run -d -p 5000:5000 gowthamvarma12/flask-app1:latest
