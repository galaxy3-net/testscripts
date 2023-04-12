#!/usr/bin/env bash


sudo git clone https://github.com/galaxy3-net/testscripts.git /testscripts/
cd /testscripts
sudo git pull

sudo . /testscripts/bin/ansible.sh