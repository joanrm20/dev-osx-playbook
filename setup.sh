#!/bin/bash


# Install wheel if not already installed
if ! command -v wheel &> /dev/null; then
    # Install wheel via pip
    echo "Installing wheel via pip..."
    pip3 install wheel
fi

# Install ansible-lint if not already installed
if ! command -v ansible-lint &> /dev/null; then
    # Install ansible-lint via pip
    echo "Installing ansible-lint via pip..."
    pip3 install ansible-lint
fi

# Install Ansible if not already installed
if ! command -v ansible &> /dev/null; then
    # Install Ansible via pip
    echo "Installing Ansible via pip..."
    pip3 install ansible
fi

# Install Ansible Galaxy roles
echo "Installing Ansible Galaxy roles..."
ansible-galaxy install -r requirements.yml

# Install Ansible collections

echo "Installing Ansible collections..."
ansible-galaxy collection install -r requirements.yml


# Confirm Ansible installation
echo "Verifying Ansible installation..."
ansible --version

# Run Ansible playbook
echo "Running Ansible playbook..."
ansible-playbook -i inventory main.yml