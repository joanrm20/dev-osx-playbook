#!/bin/bash

# Install pip if not already installed
if ! command -v pip &> /dev/null; then
    sudo easy_install pip
fi

# Install wheel if not already installed
if ! command -v wheel &> /dev/null; then
    # Install wheel via pip
    echo "Installing wheel via pip..."
    pip install wheel
fi

# Install Ansible if not already installed
if ! command -v ansible &> /dev/null; then
    # Install Ansible via pip
    echo "Installing Ansible via pip..."
    pip install ansible
fi


# Confirm Ansible installation
echo "Verifying Ansible installation..."
ansible --version

# Run Ansible playbook
echo "Running Ansible playbook..."
ansible-playbook -i inventory main.yml