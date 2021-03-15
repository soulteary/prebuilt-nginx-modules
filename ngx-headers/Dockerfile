FROM soulteary/prebuilt-nginx-modules:base-1.19.7-alpine AS Builder

ARG MODULE_CHECKSUM=7d6af910dae98f0dbc67bf77e82eab8b7da5d0b1
ARG MODULE_VERSION=0.33
ARG MODULE_NAME=headers-more-nginx-module

RUN cd /usr/src && \
    curl -L "https://github.com/openresty/headers-more-nginx-module/archive/v${MODULE_VERSION}.tar.gz" -o "v${MODULE_VERSION}.tar.gz" && \
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

COPY --from=Builder /usr/src/nginx/objs/ngx_http_headers_more_filter_module.so /