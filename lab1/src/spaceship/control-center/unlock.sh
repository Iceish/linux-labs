#!/bin/bash


YELLOW='\033[0;33m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color



if [ "$USER" != "h4cker-lab" ]
  then echo -e "${YELLOW}Wrong identity.${NC}"
  exit
fi

echo "================================"
echo "|    Control Center Unlocker   |"
echo "================================"
echo ""

echo -e "[System] ${GREEN}Unlocked !${NC}"
