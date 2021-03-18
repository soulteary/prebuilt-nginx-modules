ARG NGINX_VERSION=1.19.7
FROM soulteary/prebuilt-nginx-modules:base-${NGINX_VERSION}-alpine AS Builder

ARG MODULE_CHECKSUM=786ae3880fbf104e57ef4d92872fa9fa8e98623c
ARG MODULE_VERSION=0.62
ARG MODULE_NAME=echo-nginx-module

RUN cd /usr/src && \
    curl -L "https://github.com/openresty/echo-nginx-module/archive/v${MODULE_VERSION}.tar.gz" -o "v${MODULE_VERSION}.tar.gz" && \
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

COPY --from=Builder /usr/src/nginx/objs/ngx_http_echo_module.so /
