#!/bin/bash

# Install pip if not already installed
if ! command -v pip &> /dev/null; then
    sudo easy_install pip
fi

# Install Ansible via pip
echo "Installing Ansible via pip..."
pip install ansible

# Confirm Ansible installation
echo "Verifying Ansible installation..."
ansible --version

# Run Ansible playbook
echo "Running Ansible playbook..."
ansible-playbook -i inventory main.yml