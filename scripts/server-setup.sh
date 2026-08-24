#!/bin/bash

#install ansible when not present
#script test on debian like os specially ubuntu22.04

if [[ $EUID -ne 0 ]];then
    echo "This script need to be run with sudo priv."
    exit 1
fi

install_package(){
    echo "installing python3 and openssh-server..."
    apt install -y python3 openssh-server

    echo "enabling sshd service..."
    systemctl restart ssh && systemctl enable ssh
}

install_package
