#!/usr/bin/env bash


function install_ansible ()
{
  wall <<_EOD_

    Installing Ansible

    * * * * * * * * * *

_EOD_
  sudo apt-get update
  sudo apt-get upgrade -y
  sudo apt-get install ansible-core -y
  wall <<_EOD_

    Ansible Installation is Complete

    * * * * * * * * * *

_EOD_
}

test -e /etc/motd && rm /etc/motd

exec 2>&1
exec > /tmp/ansibile_install.log

which ansible-playbook || install_ansible

cd /testscripts/

wall <<_EOD_

  Applying Ansible Playbook

  * * * * * * * * * *

_EOD_

sudo ansible-playbook -i "localhost," -c local playbooks/playbook.yml

#(crontab -l ; echo "@reboot cd /testscripts/ && ansible-playbook -i \"localhost,\" -c local playbooks/playbook.yml | tee -a /tmp/playbook.yml"| crontab -

wall <<_EOD_

  Ansible Playbook is Complete

  * * * * * * * * * *

_EOD_

#rm $0