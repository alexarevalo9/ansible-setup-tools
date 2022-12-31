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

## Run automation tasks

To run ansible tasks in your distro just exec the following script `./ansible-run.bash`

## Test tasks in a docker container

1. Build docker container with essential tools.
    `./build-docker.bash`
2. Run docker container
    `docker run --rm -it ubuntu-computer bash`
3. Run ansible tasks in the container
	`ansible-playbook local.yml -t docker-compose`
