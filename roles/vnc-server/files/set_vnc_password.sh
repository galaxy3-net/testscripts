#!/usr/bin/bash

myuser="${1}"
mypasswd="${2:=uci2020!}"

sudo -u "${myuser}" echo "${mypasswd}" | vncpasswd -f > /home/vagrant/.vnc/passwd

#chown vagrant: /home/vagrant/.vnc/passwd
#chmod 0600 /home/vagrant/.vnc/passwd
