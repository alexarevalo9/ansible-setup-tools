# Ansible Setup Tools

This is a guide to setting up basic development tools built on top of [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).

> This guide has only been tested with Ubuntu

## Run Automatation Tasks

To run the tasks with Ansible just run the following script `./ansible-run.bash`

## Test Tasks in a Docker Container

1.  Build docker container with essential tools.
    `./build-docker.bash`
2. Run Docker Container
    `docker run --rm -it ubuntu-computer bash`
3. Run Ansible Tasks in the container
	`ansible-playbook local.yml`
