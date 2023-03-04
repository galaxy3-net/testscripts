#!/usr/bin/bash

myuser="${1}"
mypasswd="${2:=uci2020!}"

sudo -u "${myuser}" echo "${mypasswd}" | vncpasswd -f > /home/${myuser}/.vnc/passwd

chown ${myuser}: /home/${myuser}/.vnc/passwd
chmod 0600 /home/${myuser}/.vnc/passwd
