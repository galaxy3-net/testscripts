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