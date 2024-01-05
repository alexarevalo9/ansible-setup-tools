#!/usr/bin/env bash
// TODO: Install yay
sudo pacman -Syyu --noconfirm ansible
sudo pacman -S --noconfirm curl git base-devel
git clone https://github.com/alexarevalo9/ansible-setup-tools.git
sudo ansible-playbook --ask-become-pass --ask-vault-pass ansible-setup-tools/ansible/arch/local.yml -vvv
