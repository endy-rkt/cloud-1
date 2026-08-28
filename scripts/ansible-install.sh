#!/bin/bash

#test on debian like os
#to run with source

install_ansible(){
    if ! command -v ansible &> /dev/null; then
        echo "Creating a virtual env for python3"
        python3 -m venv .venv
        source .venv/bin/activate

        echo "Installing ansible..."
        pip install ansible
        ansible --version
    fi
}

install_ansible_collection(){
    if ansible --version &> /dev/null; then
        ansible-galaxy collection install community.docker
    fi
}

#download tf for provisionning and use in goinfre
download_terraform(){
    wget https://releases.hashicorp.com/terraform/1.16.0/terraform_1.16.0_linux_amd64.zip
}

install_ansible
install_ansible_collection
