FROM nginx:1-alpine3.24

RUN apk update \
    && apk add --no-cache openssl \
    && rm /var/cache/apk/*

RUN mkdir -p /etc/nginx/cert \
    && openssl req -newkey rsa:2048 -nodes \
        -keyout /etc/nginx/cert/secret.key -x509 -days 365 \
        -out /etc/nginx/cert/secret.crt \
        -subj "/C=MG/ST=Madagascar/L=Antananarivo/O=trazanad/OU=trazanad/CN=trazanad.42.fr"

RUN mkdir -p /var/www/html \
    && chmod -R 755 /var/www/html \
    && mkdir -p /var/www/admin \
    && chmod -R 755 /var/www/admin

COPY conf/1337.conf /etc/nginx/conf.d/default.conf

EXPOSE 443 80