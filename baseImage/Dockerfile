ARG NGINX_VERSION=1.19.7
FROM nginx:${NGINX_VERSION}-alpine
# Mirror
# RUN cat /etc/apk/repositories | sed -e "s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/" | tee /etc/apk/repositories

ARG NGINX_SHASUM=0dde53b5a948efc9dc852814186052e559d190ea
RUN apk add --no-cache --virtual .build-deps gcc libc-dev make openssl-dev pcre-dev zlib-dev linux-headers libxslt-dev gd-dev geoip-dev perl-dev libedit-dev mercurial bash alpine-sdk findutils && \
    mkdir -p /usr/src && cd /usr/src && \
    curl -L "http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz" -o nginx.tar.gz && \
    echo "$NGINX_SHASUM  nginx.tar.gz" | shasum -c && \
    tar -zxC /usr/src -f nginx.tar.gz && \
    cd /usr/src && \
    mv /usr/src/nginx-$NGINX_VERSION /usr/src/nginx && \
    CONFARGS=$(nginx -V 2>&1 | sed -n -e 's/^.*arguments: //p') \
    CONFARGS=${CONFARGS/-Os -fomit-frame-pointer -g/-Os} && \
    export CONFARGS=$CONFARGS;