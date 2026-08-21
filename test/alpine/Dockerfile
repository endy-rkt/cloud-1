FROM alpine:3.24

RUN apk update \
    && apk add --no-cache openssh python3

RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config \
    && echo "root:password" | chpasswd

RUN mkdir -p /var/run/sshd

COPY alpine/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 22

ENTRYPOINT ["/entrypoint.sh"]
