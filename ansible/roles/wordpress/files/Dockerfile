FROM wordpress:php8.4-fpm-alpine

RUN apk update && \
    for i in {1..10}; do \
        apk add --no-cache curl && break || \
        (echo "Apk retry $i failed, waiting..." && sleep 3); \
    done && \
    rm -rf /var/cache/apk/*

COPY conf/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

RUN for i in {1..10}; do \
        curl -o /usr/local/bin/wp -L https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && break || \
        (echo "Curl retry $i failed, waiting..." && sleep 3); \
    done && \
    chmod +x /usr/local/bin/wp
    
ENTRYPOINT ["/entrypoint.sh"]

CMD ["php-fpm"]
