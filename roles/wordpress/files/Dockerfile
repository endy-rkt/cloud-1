FROM wordpress:php8.3-fpm

RUN apt-get update \
    && apt-get install -y  wget \
    && rm -rf /var/lib/apt/lists/*


RUN wget -O /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x /usr/local/bin/wp

RUN echo "memory_limit=512M" > /usr/local/etc/php/conf.d/memory-limit.ini

RUN mkdir -p /run/php

COPY tools/wp-auto-config.sh /wp-auto-config.sh
RUN chmod +x /wp-auto-config.sh

ENTRYPOINT ["/wp-auto-config.sh"]
