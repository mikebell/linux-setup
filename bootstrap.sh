#!/bin/bash

if [ "$1" == "roles" ]; then
    ansible-galaxy install -r roles/requirements.yml --f
fi

if [ "$1" == "run" ]; then
    ansible-playbook -i hosts.ini playbooks/ubuntu.yml --ask-become-pass
fi
