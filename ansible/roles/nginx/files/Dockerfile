FROM nginx:1-alpine3.24

RUN apk update && \
    for i in {1..10}; do \
        apk add --no-cache openssl && break || \
        (echo "Retry $i failed, waiting..." && sleep 3); \
    done && \
    rm -rf /var/cache/apk/*

RUN mkdir -p /etc/nginx/cert \
    && mkdir -p /var/www/html \
    && chmod -R 755 /var/www/html \
    && mkdir -p /var/www/admin \
    && chmod -R 755 /var/www/admin

COPY conf/cert/  /etc/nginx/cert/

COPY conf/1337.conf /etc/nginx/conf.d/default.conf

EXPOSE 443 80
