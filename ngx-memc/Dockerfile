FROM soulteary/prebuilt-nginx-modules:base-1.19.7-alpine AS Builder

ARG MODULE_CHECKSUM=1534ec93a054e2e6330d0200b6e175af87720fdf
ARG MEMC_VERSION=0.19

RUN cd /usr/src && \
    curl -L "https://github.com/openresty/memc-nginx-module/archive/v${MEMC_VERSION}.tar.gz" -o "v${SRCACHE_VERSION}.tar.gz" && \
    echo "${MODULE_CHECKSUM}  v${SRCACHE_VERSION}.tar.gz" | shasum -c && \
    tar -zxC /usr/src -f v${SRCACHE_VERSION}.tar.gz && \
    cd /usr/src && \
    mv memc-nginx-module-0.19/ memc-nginx-module && \
    cd /usr/src/nginx && \
    CONFARGS=$(nginx -V 2>&1 | sed -n -e 's/^.*arguments: //p') \
    CONFARGS=${CONFARGS/-Os -fomit-frame-pointer -g/-Os} && \
    echo $CONFARGS && \
    ./configure --with-compat $CONFARGS --add-dynamic-module=../memc-nginx-module/ && \
    make modules

FROM scratch

COPY --from=Builder /usr/src/nginx/objs/ngx_http_memc_module.so /
