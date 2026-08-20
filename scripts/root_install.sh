#!/bin/bash

#install ansible when not present

if [[ $EUID -ne 0 ]];then
    echo "This script need to be run with sudo priv."
    exit 1
fi

install_ansible(){
    if ! command -v pip &> /dev/null > /dev/null; then
        echo "Installing pip..."
        apt install -y python3-pip
    fi

    if ! command -v ansible &> /dev/null; then
        echo "Installing ansible..."
        python3 -m pip install --break-system-packages --quiet ansible
        ansible --version
    fi
}

install_ansible
