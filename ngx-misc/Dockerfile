FROM soulteary/prebuilt-nginx-modules:base-1.19.7-alpine AS Builder

ARG MODULE_CHECKSUM=2433bb7a138c3b13812ec2af7070cdc67435918f
ARG MODULE_VERSION=0.32
ARG MODULE_NAME=set-misc-nginx-module

ARG DEVEL_KIT_MODULE_CHECKSUM=e15316e13a7b19a3d2502becbb26043a464a135a
ARG DEVEL_KIT_VERSION=0.3.1
ARG DEVEL_KIT_NAME=ngx_devel_kit

RUN cd /usr/src && \
    curl -L "https://github.com/openresty/set-misc-nginx-module/archive/v${MODULE_VERSION}.tar.gz" -o "v${MODULE_VERSION}.tar.gz" && \
    echo "${MODULE_CHECKSUM}  v${MODULE_VERSION}.tar.gz" | shasum -c && \
    curl -L "https://github.com/vision5/ngx_devel_kit/archive/v${DEVEL_KIT_VERSION}.tar.gz" -o "v${DEVEL_KIT_VERSION}.tar.gz" && \
    echo "${DEVEL_KIT_MODULE_CHECKSUM}  v${DEVEL_KIT_VERSION}.tar.gz" | shasum -c && \
    tar -zxC /usr/src -f v${MODULE_VERSION}.tar.gz && \
    tar -zxC /usr/src -f v${DEVEL_KIT_VERSION}.tar.gz && \
    cd /usr/src && \
    mv ${MODULE_NAME}-${MODULE_VERSION}/ ${MODULE_NAME} && \
    mv ${DEVEL_KIT_NAME}-${DEVEL_KIT_VERSION}/ ${DEVEL_KIT_NAME} && \
    cd /usr/src/nginx && \
    CONFARGS=$(nginx -V 2>&1 | sed -n -e 's/^.*arguments: //p') \
    CONFARGS=${CONFARGS/-Os -fomit-frame-pointer -g/-Os} && \
    echo $CONFARGS && \
    ./configure --with-compat $CONFARGS --add-dynamic-module=../${DEVEL_KIT_NAME}/ --add-dynamic-module=../${MODULE_NAME}/ && \
    make modules

FROM scratch

COPY --from=Builder /usr/src/nginx/objs/ndk_http_module.so /
COPY --from=Builder /usr/src/nginx/objs/ngx_http_set_misc_module.so /