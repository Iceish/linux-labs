#!/bin/bash

BOLD="\e[1m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
CYAN="\e[36m"
MAGENTA="\e[95m"
DIM="\e[2m"
RESET="\e[0m"


echo -en "$BOLD"
echo "===================="
echo "=   LNX-LAB TOOL   ="
echo "===================="
echo -e "$RESET"

[[ "${BASH_SOURCE[0]}" != "${0}" ]] || {
	echo -e "${RED}⚠️  You have to source this script.${RESET}"
	echo "> source setup.sh"
	exit 1
}

export LAB_BACKEND="$(pwd)/.backend"
alias lab=$LAB_BACKEND/index.sh

echo -e "${GREEN}✅ You successfully initialized this linux lab."
echo -e "Enjoy !${RESET}"
echo "${DIM}Keep in mind to source this script if you restarted a new terminal.${RESET}"
echo "${DIM}- Iceish${RESET}"
