#!/usr/bin/env bash

sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update -y
sudo apt-get install -y curl git software-properties-common ansible
git clone https://github.com/alexarevalo9/ansible-setup-tools.git
sudo ansible-playbook --ask-become-pass --ask-vault-pass ansible-setup-tools/local.yml -t ssh
