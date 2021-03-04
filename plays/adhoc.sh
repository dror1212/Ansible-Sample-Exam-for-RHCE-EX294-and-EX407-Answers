#!/bin/bash

ansible all -a "/sbin/useradd automation"
ansible all -a "/sbin/usermod -aG wheel automation"
ansible all -a "/bin/passwd -d automation"
ansible all -a "/bin/mkdir /home/automation/.ssh"
ansible all -m ansible.builtin.copy -a "src=/home/automation/.ssh/id_rsa.pub dest=/home/automation/.ssh/authorized_keys"
