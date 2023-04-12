#!/usr/bin/env bash


sudo git clone https://github.com/galaxy3-net/testscripts.git /testscripts/
sudo chown -R vagrant:vagrant /testscripts/
cd /testscripts
git pull

. /testscripts/bin/ansible.sh