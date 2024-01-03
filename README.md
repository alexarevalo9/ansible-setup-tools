# Setting up tools with Ansible

This is a guide to automatically setting up software development tools built on top of [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).

> This guide has only been tested with Ubuntu

## Tools

- [x] zsh and oh-my-zsh
- [x] nvm and node.js
- [x] brave
- [x] vscode
- [x] slack
- [x] discord
- [x] postman
- [x] dbaver
- [x] docker
- [x] docker-compose
- [x] zoom
- [x] tmux
- [x] xclip
- [x] fzf

## Run automation tasks

To run ansible tasks in your distro just exec the following script `sh ./ansible/debian/ansible-run.sh`

## Test tasks in a docker container

1. Build docker container with essential tools.
   `./ansible/debian/build-docker.sh`
2. Run docker container
   `docker run --rm -it ubuntu-computer bash`
3. Run ansible tasks in the container
   `ansible-playbook local.yml -t docker-compose`
