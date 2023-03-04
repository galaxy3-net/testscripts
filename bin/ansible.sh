#!/usr/bin/env bash

cat <<_EOD_

  Installing Ansible

  * * * * * * * * * *

_EOD_

wall <<_EOD_

  Installing Ansible

  * * * * * * * * * *

_EOD_

test -e /etc/motd && rm /etc/motd

exec 2>&1
exec > /tmp/ansibile_install.log

apt-get update
apt-get upgrade -y
apt-get install ansible -y

cd /testscripts/

sudo ansible-playbook -i "localhost," -c local playbooks/playbook.yml

#(crontab -l ; echo "@reboot cd /testscripts/ && ansible-playbook -i \"localhost,\" -c local playbooks/playbook.yml")| crontab -

wall <<_EOD_

  Ansible Installation is Complete

  * * * * * * * * * *

_EOD_

#rm $0