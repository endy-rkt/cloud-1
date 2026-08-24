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

install_ansible
install_ansible_collection
