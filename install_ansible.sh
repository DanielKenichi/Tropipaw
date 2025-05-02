#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root. Try: sudo $0" >&2
    exit 1
fi

apt update

echo "Installing prerequisites"
apt install -y software-properties-common

echo "Adding Ansible repository"
add-apt-repository --yes --update ppa:ansible/ansible

echo "Installing Ansible..."
apt install -y ansible

echo "Checking if ansible is installed"

if command -v ansible >/dev/null 2>&1; then
    echo "Ansible installed successfully!"
    echo "Version: $(ansible --version | head -n 1)"
else
    echo "Ansible installation failed!" >&2
    exit 1
fi