#!/bin/bash
ansible-playbook upstart.yml  -c local --tags=exec
/bin/sleep
