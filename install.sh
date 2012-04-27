#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root (or sudo)" 1>&2
   exit 1
fi

apt-get install -y xterm vim screen

chmod 755 /var/run/screen
chmod 6755 /usr/bin/screen

