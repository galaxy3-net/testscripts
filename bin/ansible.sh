#!/usr/bin/env bash

cat <<_EOD_

  Installing Ansible

  * * * * * * * * * *

_EOD_

exec 2>&1
exec > /tmp/ansibile_install.log

apt-get update
apt-get upgrade -y
apt-get install ansible -y

cd /testscripts/

sudo ansible-playbook -i "localhost," -c local playbooks/playbook.yml

rm $0