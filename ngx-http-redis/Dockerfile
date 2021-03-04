FROM soulteary/prebuilt-nginx-modules:base-1.19.7-alpine AS Builder

ARG MODULE_CHECKSUM=200dbd4f7084a7fa2c0fb416f3eef64c86719ce1
ARG MODULE_VERSION=0.3.9
ARG MODULE_NAME=ngx_http_redis

RUN cd /usr/src && \
    curl -L "https://people.freebsd.org/~osa/ngx_http_redis-${MODULE_VERSION}.tar.gz" -o "v${MODULE_VERSION}.tar.gz" && \
    echo "${MODULE_CHECKSUM}  v${MODULE_VERSION}.tar.gz" | shasum -c && \
    tar -zxC /usr/src -f v${MODULE_VERSION}.tar.gz && \
    cd /usr/src && \
    mv ${MODULE_NAME}-${MODULE_VERSION}/ ${MODULE_NAME} && \
    cd /usr/src/nginx && \
    CONFARGS=$(nginx -V 2>&1 | sed -n -e 's/^.*arguments: //p') \
    CONFARGS=${CONFARGS/-Os -fomit-frame-pointer -g/-Os} && \
    echo $CONFARGS && \
    ./configure --with-compat $CONFARGS --add-dynamic-module=../${MODULE_NAME}/ && \
    make modules

FROM scratch

COPY --from=Builder /usr/src/nginx/objs/ngx_http_redis_module.so /
