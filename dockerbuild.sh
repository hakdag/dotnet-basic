#!/bin/bash

IMAGE_TAG=$1

docker image rm $IMAGE_TAG --force
docker ps -aq --no-trunc -f status=exited | xargs docker rm
docker build --tag=$IMAGE_TAG .