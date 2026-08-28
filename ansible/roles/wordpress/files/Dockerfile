FROM wordpress:php8.4-fpm-alpine

RUN apk update \
    && apk add --no-cache curl \
    && rm /var/cache/apk/*

COPY conf/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

RUN curl -o /usr/local/bin/wp -L https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x /usr/local/bin/wp
    
ENTRYPOINT ["/entrypoint.sh"]

CMD ["php-fpm"]
