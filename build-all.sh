#!/bin/bash

echo "Building all the Docker images ..."

REPO="docker.io/dal0s/ide"

docker build -t $REPO:centos7.9-xfce-compiler -f Dockerfile.centos7.xfce.compiler .
wait
docker build -t $REPO:centos6.6-xfce-compiler -f Dockerfile.centos6.xfce.compiler .
wait

echo "build process is finished"