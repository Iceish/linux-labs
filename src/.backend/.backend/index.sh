#/bin/bash

# Made by @Iceish on Github.

BOLD="\e[1m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
CYAN="\e[36m"
MAGENTA="\e[95m"
DIM="\e[2m"
RESET="\e[0m"
ASCII_SHP="⬢"

RESULT=1
ARGC=$#

# Function to wrap echo with status and color
echo_status() {
  local status=$1
  local message=$2
  local color

  case $status in
    "success")
      color=$GREEN
      ;;
    "warn")
      color=$YELLOW
      ;;
    "error")
      color=$RED
      ;;
    *)
      color=$RESET
      ;;
  esac

  echo -e "${color}${BOLD}$ASCII_SHP $message${RESET}"
}


verify_requirements() {
	local count=$1
	if [ "$ARGC" -ne $count ]; then
		echo_status "error" "This command require \`$count\` argument."
		echo -e "${DIM}- Type \`lab help\` for more informations.${RESET}"
		exit 1
	fi
}

display_fake_event() {
  local messages=("$@")
  local total=${#messages[@]}
  local counter=1

  for message in "${messages[@]}"; do
    echo -e "[${MAGENTA}$counter${RESET}/${MAGENTA}$total${RESET}] $message.."
    sleep 1
    ((counter++))
  done
}

echo -en "$BOLD"
echo "===================="
echo "=   LNX-LAB TOOL   ="
echo "===================="
echo -e "$RESET"

CMD="$1"

if [ -e "$LAB_BACKEND/commands.part.sh" ]; then
	source "$LAB_BACKEND/commands.part.sh"
else
	echo_status "error" "Couldn't load commands. Check this clone integrity."
	exit 1
fi

if [ "$RESULT" -eq "0" ]; then
	echo_status "success" "You successfully validated this step."
else
	echo_status "error" "You failed this step. Try again."
fi


