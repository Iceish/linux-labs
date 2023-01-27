#!/bin/bash

YELLOW='\033[0;33m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color


if [ "$(cat right-reactor/engine.conf 2>/dev/null  | tr -d '\n')" == "fuel-type=tritiumquantity=39KBengine-with-starter=1" ]; then
  echo -e "Br br BRbrb rbrbr ...br brbR.B.br .b brRRRRRRTRTRTRTR...\n${GREEN}Reactors works! Well done soldier.${NC}"
else
  echo -e "Br br BRbrb rbrbr ...br brbR.B.br..Glouu glouuuu...\n${YELLOW}Well, that's a fail..${NC}"
fi

