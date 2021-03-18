#!/bin/bash

RELEASE_DIR='./baseImage';
REPO_NAME='soulteary/prebuilt-nginx-modules'

set -a
    . "$RELEASE_DIR/.env"
set +a

TAG=base-$NGINX_VERSION-alpine;
DIST=$REPO_NAME:$TAG

echo "Build: $DIST";

echo $NGINX_VERSION:$NGINX_SHASUM
echo "docker build --build-arg NGINX_VERSION=$NGINX_VERSION --build-arg NGINX_SHASUM=$NGINX_SHASUM --tag $DIST -f "$RELEASE_DIR/Dockerfile" ."
docker build --build-arg NGINX_VERSION="$NGINX_VERSION" --build-arg NGINX_SHASUM="$NGINX_SHASUM" --tag $DIST -f "$RELEASE_DIR/Dockerfile" .
