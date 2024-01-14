#!/usr/bin/env bash

# TODO: Install snap (first check if is not install and restart)
sudo pacman -Sy --noconfirm ansible curl git base-devel
git clone https://github.com/alexarevalo9/ansible-setup-tools.git
sudo cp ~/ansible-setup-tools/ansible/arch/local.yml ~/ansible-setup-tools/local.yml
ansible-playbook --ask-become-pass --ask-vault-pass ansible-setup-tools/local.yml -vvv
