# Ansible setup tools

This is a guide to setting up basic software development tools built on top of [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).

> This guide has only been tested with Ubuntu

## Run automation tasks

To run the tasks with Ansible just run the following script `./ansible-run.bash`

## Test tasks in a docker container

1. Build docker container with essential tools.
    `./build-docker.bash`
2. Run docker container
    `docker run --rm -it ubuntu-computer bash`
3. Run ansible tasks in the container
	`ansible-playbook local.yml`
