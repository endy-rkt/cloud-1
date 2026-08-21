FROM debian:12-slim

RUN apt update \
    && apt install -y openssh-server \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN echo "root:password" | chpasswd

RUN mkdir -p /run/sshd

EXPOSE 22

ENTRYPOINT ["/usr/sbin/sshd","-D"]
