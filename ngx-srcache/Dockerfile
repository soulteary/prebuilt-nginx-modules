FROM soulteary/prebuilt-nginx-modules:base-1.19.7-alpine AS Builder

ARG MODULE_CHECKSUM=dacf3db7dfcd971128b10902a3c0769fb80ea764
ARG SRCACHE_VERSION=0.32

RUN cd /usr/src && \
    curl -L "https://github.com/openresty/srcache-nginx-module/archive/v${SRCACHE_VERSION}.tar.gz" -o "v${SRCACHE_VERSION}.tar.gz" && \
    echo "${MODULE_CHECKSUM}  v${SRCACHE_VERSION}.tar.gz" | shasum -c && \
    tar -zxC /usr/src -f v${SRCACHE_VERSION}.tar.gz && \
    cd /usr/src && \
    mv srcache-nginx-module-${SRCACHE_VERSION}/ srcache-nginx-module && \
    cd /usr/src/nginx && \
    CONFARGS=$(nginx -V 2>&1 | sed -n -e 's/^.*arguments: //p') \
    CONFARGS=${CONFARGS/-Os -fomit-frame-pointer -g/-Os} && \
    echo $CONFARGS && \
    ./configure --with-compat $CONFARGS --add-dynamic-module=../srcache-nginx-module/ && \
    make modules

FROM scratch

COPY --from=Builder /usr/src/nginx/objs/ngx_http_srcache_filter_module.so /
