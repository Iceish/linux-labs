#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run this script as root or with sudo command."
  exit 1
fi

chmod o+rwx ./
cat ./.launchSetupToStart/unlock.sh.enc | base64 -d > unlock.sh
cp ./.launchSetupToStart/control.log.enc ./
mv ./setup.sh ./.launchSetupToStart/

useradd h4cker-lab

chown h4cker-lab:h4cker-lab ./control.log.enc
chmod 700 ./control.log.enc

chown h4cker-lab:h4cker-lab ./unlock.sh
chmod 000 ./unlock.sh

chown root:root ./.launchSetupToStart
chmod 700 ./.launchSetupToStart

echo "================================"
echo "|         Setup Script         |"
echo "================================"
echo ""

echo "This room is ready."
echo "(In case of malfunction, setup.sh is in .launchSetupToStart folder. Copy this file back and launch it.)"
