#!/bin/bash

RELEASE_DIR="./baseImage";
REPO_NAME="soulteary/prebuilt-nginx-modules"

set -a
    . "$RELEASE_DIR/.env"
set +a

# Build For Alpine

TAG=base-$NGINX_VERSION-alpine;
DIST=$REPO_NAME:$TAG

echo "Build: $DIST";

echo $NGINX_VERSION:$NGINX_SHASUM
echo "docker build --build-arg NGINX_VERSION=$NGINX_VERSION --build-arg NGINX_SHASUM=$NGINX_SHASUM --tag $DIST -f "$RELEASE_DIR/Dockerfile.alpine" ."
docker build --build-arg NGINX_VERSION="$NGINX_VERSION" --build-arg NGINX_SHASUM="$NGINX_SHASUM" --tag $DIST -f "$RELEASE_DIR/Dockerfile.alpine" .

# Build For Debian

TAG=base-$NGINX_VERSION;
DIST=$REPO_NAME:$TAG

echo "Build: $DIST";

echo $NGINX_VERSION:$NGINX_SHASUM
echo "docker build --build-arg NGINX_VERSION=$NGINX_VERSION --build-arg NGINX_SHASUM=$NGINX_SHASUM --tag $DIST -f "$RELEASE_DIR/Dockerfile.debian" ."
docker build --build-arg NGINX_VERSION="$NGINX_VERSION" --build-arg NGINX_SHASUM="$NGINX_SHASUM" --tag $DIST -f "$RELEASE_DIR/Dockerfile.debian" .
