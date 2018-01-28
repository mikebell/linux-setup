# Ubuntu Quick Dev Setup

This is an opinionated Ansible setup for new Ubuntu machines. Everything is ordered in a way to make sure your up and running as fast as possible.

## Ansible install

    sudo apt-add-repository ppa:ansible/ansible
    sudo apt update
    sudo apt install ansible

## Roles

    ansible-galaxy install -r roles/requirements.yml --force

## Playbooks

    ansible-playbook -i hosts.ini playbooks/ubuntu.yml

## Lazy Way

    ./bootstrap roles
    ./bootstrap run
