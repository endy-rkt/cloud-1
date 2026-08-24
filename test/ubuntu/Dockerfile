FROM ubuntu:22.04

RUN apt update \
    && apt install -y openssh-server python3 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config \
    && echo "root:password" | chpasswd

RUN mkdir -p /run/sshd

EXPOSE 22

ENTRYPOINT ["/usr/sbin/sshd","-D"]
