#!/bin/bash

install_ansible(){
    if ! command -v ansible &> /dev/null; then
        echo "Installing ansible..."
        # pip install ansible --break-system-packages for vm
        pip install ansible
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