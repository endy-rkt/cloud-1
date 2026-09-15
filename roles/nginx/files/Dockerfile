FROM	nginx:1-bookworm

RUN apt update \
	&& apt-get install -y --no-install-recommends openssl \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p /etc/nginx/cert \
	/var/www/html	\
	/var/www/admin  \
	&& chmod -R  755 /var/www/html /var/www/admin

RUN mkdir -p /etc/nginx/cert \
    && openssl req -x509 -nodes \
    -out /etc/nginx/cert/secret.crt \
    -keyout /etc/nginx/cert/secret.key \
    -subj "/C=MG/ST=TN/L=Tana/O=42/OU=42/CN=tenandri.42.fr/UID=tenandri"

COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 443 80
