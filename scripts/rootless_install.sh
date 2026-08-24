#!/bin/bash

#install ansible when not present

install_ansible(){
    if ! command -v ansible &> /dev/null; then
        echo "Installing ansible..."
        python3 -m pip install --break-system-packages --quiet ansible
        ansible --version
    fi
}

install_ansible_collection(){
    if ansible --version &> /dev/null; then
        ansible-galaxy collection install community.docker
    fi
}

install_ansible
install_ansible_collection
