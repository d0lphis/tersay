#!/bin/bash

echo "deleting images..."

PATTERN="docker.io/dal0s/ide"

docker images -a | grep $PATTERN | awk '{print $3}' | xargs docker rmi

echo -e "exiting"