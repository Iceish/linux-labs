#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root / sudo"
  exit
fi

chmod 666 unlock.sh

useradd h4cker-lab
chmod 000 control.log
chown h4cker-lab:h4cker-lab control.log
