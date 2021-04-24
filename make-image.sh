#!/bin/bash

RELEASE_DIR="./modules";
REPO_NAME="soulteary/prebuilt-nginx-modules"

for moduleName in $RELEASE_DIR/*; do
    set -a
        . "$moduleName/.env"
    set +a

    tag=$(echo $moduleName | cut -b 11-);
    BUILD_NAME="$REPO_NAME:$tag-$NGINX_VERSION-alpine"
    echo "Build: $BUILD_NAME";
    BUILD_ARGS=$(tr '\n' ';' < "$moduleName/.env" | sed 's/;$/\n/' | sed 's/^/ --build-arg /' | sed 's/;/ --build-arg /g')

    docker build $BUILD_ARGS --tag $BUILD_NAME -f $moduleName/Dockerfile.alpine .
done