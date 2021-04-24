#!/bin/bash

RELEASE_DIR="./modules";
REPO_NAME="soulteary/prebuilt-nginx-modules"

for moduleName in $RELEASE_DIR/*; do

    set -a
        . "$moduleName/.env"
    set +a

    tag=$(echo $moduleName | cut -b 11-);

    if [ -f "$moduleName/Dockerfile.alpine" ]; then
        BUILD_NAME="$REPO_NAME:$tag-$NGINX_VERSION-alpine"
        if [[ "$(docker images -q $BUILD_NAME 2> /dev/null)" == "" ]]; then
            echo "Build: $BUILD_NAME";
            BUILD_ARGS=$(tr '\n' ';' < "$moduleName/.env" | sed 's/;$/\n/' | sed 's/^/ --build-arg /' | sed 's/;/ --build-arg /g')
            docker build $BUILD_ARGS --tag $BUILD_NAME -f $moduleName/Dockerfile.alpine .
        fi
    fi

    if [ -f "$moduleName/Dockerfile.debian" ]; then
        BUILD_NAME="$REPO_NAME:$tag-$NGINX_VERSION"
        if [[ "$(docker images -q $BUILD_NAME 2> /dev/null)" == "" ]]; then
            echo "Build: $BUILD_NAME";
            BUILD_ARGS=$(tr '\n' ';' < "$moduleName/.env" | sed 's/;$/\n/' | sed 's/^/ --build-arg /' | sed 's/;/ --build-arg /g')
            docker build $BUILD_ARGS --tag $BUILD_NAME -f $moduleName/Dockerfile.debian .
        fi
    fi

done