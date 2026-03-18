#!/bin/bash

APP_NAME="techflow-app"
DOCKER_REPO="kenvalley03/techflow-app"

IMAGE="$DOCKER_REPO:previous"

echo "Rolling back to previous version..."

docker pull $IMAGE

docker stop $APP_NAME || true
docker rm $APP_NAME || true

docker run -d -p 5000:5000 --name $APP_NAME $IMAGE

echo "Rollback complete."
