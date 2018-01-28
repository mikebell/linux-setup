#!/bin/bash

if [ "$1" == "ansible" ]; then
  sudo apt-add-repository ppa:ansible/ansible
  sudo apt update
  sudo apt install ansible
fi

if [ "$1" == "roles" ]; then
    ansible-galaxy install -r roles/requirements.yml
fi

if [ "$1" == "run" ]; then
    ansible-playbook -i hosts.ini playbooks/ubuntu.yml --ask-become-pass
fi
