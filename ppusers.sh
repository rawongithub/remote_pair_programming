#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root (or sudo)" 1>&2
   exit 1
fi

if [[ $# -lt 1 ]]; then
  echo "This script adds some new users and sets them up with multisession screen setup"
  echo "Usage: ppusers.sh USER1 USER2 ..."
  exit 1
fi

for USER in "$@"; do
  adduser $USER --disabled-password
  cp ./screenrc /home/$USER/.screenrc
  chown $USER:$USER /home/$USER/.screenrc
  chmod 644 /home/$USER/.screenrc
  cp ./ppsession.sh /home/$USER/ppsession.sh
  chown $USER:$USER /home/$USER/ppsession.sh
  chmod 755 /home/$USER/ppsession.sh
done

