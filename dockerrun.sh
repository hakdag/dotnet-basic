#!/bin/bash

PORT=$1
TAG=$2

docker run -d --restart=always -p $PORT:80 $TAG