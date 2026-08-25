#!/bin/sh
set -e

WP_PATH="/var/www/html"

WP_ADMIN="trazanad"
WP_ADMIN_PASSWORD="trazanadpass"
WP_ADMIN_EMAIL="trazanad@42.com"

WP_USER="dude"
WP_USER_PASSWORD="dudepass"
WP_USER_EMAIL="dude@42.fr"


if [ ! -e "$WP_PATH/wp-settings.php" ]; then
    echo "copying wordpress core files from image..."
    cp -R /usr/src/wordpress/. "$WP_PATH/"
fi

if [ ! -f "$WP_PATH/wp-config.php" ]; then
    echo "creating wp-config.php..."
    wp config create \
        --path="$WP_PATH" \
        --dbname="$WORDPRESS_DB_NAME" \
        --dbuser="$WORDPRESS_DB_USER" \
        --dbpass="$WORDPRESS_DB_PASSWORD" \
        --dbhost="$WORDPRESS_DB_HOST" \
        --allow-root
fi

if ! wp core is-installed --path="$WP_PATH" --allow-root; then
    echo "installing wordpress..."
    wp core install \
        --url="http://localhost" \
        --title="Demo site" \
        --admin_user="$WP_ADMIN" \
        --admin_password="$WP_ADMIN_PASSWORD" \
        --admin_email="$WP_ADMIN_EMAIL" \
        --path="$WP_PATH" \
        --allow-root

    wp user create "$WP_USER" "$WP_USER_EMAIL" \
        --role=editor \
        --user_pass="$WP_USER_PASSWORD" \
        --path="$WP_PATH" \
        --allow-root
else
    echo "wordpress already installed, skipping"
fi

chmod -R 755 $WP_PATH

chown -R www-data:www-data $WP_PATH

exec docker-entrypoint.sh "$@"
