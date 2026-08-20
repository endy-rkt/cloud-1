#!/bin/bash

#install ansible when not present

install_ansible(){
    if ! command -v ansible &> /dev/null; then
        echo "Installing ansible..."
        python3 -m pip install --break-system-packages --quiet ansible
        ansible --version
    fi
}

install_ansible
