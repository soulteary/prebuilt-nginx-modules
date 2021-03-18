#!/bin/bash

REPO_NAME="soulteary/prebuilt-nginx-modules"

RELEASE_DIR="./baseImage";
set -a
    . "$RELEASE_DIR/.env"
set +a

TAG="base-$NGINX_VERSION-alpine";
DIST="$REPO_NAME:$TAG"

echo "Push: $DIST";
docker push DIST;

RELEASE_DIR="./modules";

for moduleName in $RELEASE_DIR/*; do
    set -a
        . "$moduleName/.env"
    set +a

    tag=$(echo $moduleName | cut -b 11-);
    BUILD_NAME="$REPO_NAME:$tag-$NGINX_VERSION-alpine"
    echo "Push: $BUILD_NAME";
    docker push $BUILD_NAME;
done