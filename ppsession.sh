#!/bin/bash

if [[ $# -lt 1 ]]; then
  echo "This script makes given users to be available to access your multisession screen"
  echo "Usage: ppsession.sh USER1 USER2 ..."
  exit 1
fi

ARGV="$@"
USERS=${ARGV// /,}
sed "s/\s*acladd.*/acladd $USERS/" ~/.screenrc > screenrc
mv ~/.screenrc ~/.screenrc~
mv screenrc ~/.screenrc

