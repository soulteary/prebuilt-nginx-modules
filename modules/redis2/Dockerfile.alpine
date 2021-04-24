ARG NGINX_VERSION=1.19.7
FROM soulteary/prebuilt-nginx-modules:base-${NGINX_VERSION}-alpine AS Builder

ARG MODULE_CHECKSUM=b358aa19f7a3f31584751a9f4e477c5f27d4474a
ARG REDIS_VERSION=0.15

RUN cd /usr/src && \
    curl -L "https://github.com/openresty/redis2-nginx-module/archive/v${REDIS_VERSION}.tar.gz" -o "v${REDIS_VERSION}.tar.gz" && \
    echo "${MODULE_CHECKSUM}  v${REDIS_VERSION}.tar.gz" | shasum -c && \
    tar -zxC /usr/src -f v${REDIS_VERSION}.tar.gz && \
    cd /usr/src && \
    mv redis2-nginx-module-${REDIS_VERSION}/ redis2-nginx-module && \
    cd /usr/src/nginx && \
    CONFARGS=$(nginx -V 2>&1 | sed -n -e 's/^.*arguments: //p') \
    CONFARGS=${CONFARGS/-Os -fomit-frame-pointer -g/-Os} && \
    echo $CONFARGS && \
    ./configure --with-compat $CONFARGS --add-dynamic-module=../redis2-nginx-module/ && \
    make modules

FROM scratch

COPY --from=Builder /usr/src/nginx/objs/ngx_http_redis2_module.so /
