#!/usr/bin/env bash

# bash -c $(curl -s https://raw.githubusercontent.com/galaxy3-net/testscripts/bin/setup.sh

if [ ! -d /testscripts ]
then
  sudo git clone https://github.com/galaxy3-net/testscripts.git /testscripts/
  sudo chown -R vagrant:vagrant /testscripts/
fi

(cd /testscripts && git pull)

sudo bash /testscripts/bin/ansible.sh