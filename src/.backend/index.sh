#/bin/bash

# Made by @EnzoGzz on Github.

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

echo -en "$BOLD"
echo "===================="
echo "=   LNX-LAB TOOL   ="
echo "===================="
echo -e "$RESET"

cmd="$1"
case "$cmd" in

	"verify_event_report" )
		verify_requirements 2
		diff "$2" "$LAB_BACKEND/control/event_landing_report.anwser" &> /dev/null
		RESULT=$?

		echo "Analysing report.."
		sleep 1
	;;

	"verify_count_report")
		verify_requirements 2
		diff "$2" "$LAB_BACKEND/control/count_landing_report.anwser" &> /dev/null
		RESULT=$?
		
		echo "Analysing report.."
		sleep 1
	;;

	"verify_hostname")
		verify_requirements 1
		diff "/etc/hostname" "$LAB_BACKEND/connection/hostname.anwser" &> /dev/null \
		&& echo "$(cat /etc/hosts | grep 127.0.1.1 | tr -s ' ' | cut -d ' ' -f 2)" &> "$LAB_BACKEND/connection/hosts.tmp" \
		&& diff "$LAB_BACKEND/connection/hosts.tmp" "$LAB_BACKEND/connection/hostname.anwser" &> /dev/null
		RESULT=$?
		
		rm -f "$LAB_BACKEND/connection/hosts.tmp"
		
		echo "Checking hostname.."
		sleep 1
	;;

	"verify_network")
		verify_requirements 1
		cat /etc/network/interfaces 2> /dev/null | grep "inet static" &> /dev/null \
		&& ping -c 1 google.com &> /dev/null
		RESULT=$?
		
		for i in "Connecting to nodes[1/3]" "Etablishing routing[2/3]" "TCP Handshake[3/3]"
		do
			echo "$i.."
			sleep 1
		done
	;;

	"start_attack")
		verify_requirements 1
		gcc -s "$LAB_BACKEND/attack/cz.c" -o "$LAB_BACKEND/attack/cz"
		chmod +x "$LAB_BACKEND/attack/cz"
		"$LAB_BACKEND/attack/cz" 25 & &> /dev/null
		rm -f "$LAB_BACKEND/attack/cz" &> /dev/null
		echo "🧟 Amidst the chaos, a horde of zombies advances, but you stand firm, ready to defend yourself."
		exit 0
	;;

	"verify_war_victory")
		verify_requirements 1
		echo "Drones are scanning surroundings."
		for i in "Valley[1/3]" "Mountains[2/3]" "Fields[3/3]"
		do
			echo "Scanning $i.."
			sleep 1
		done
		RESULT=$(($(ps aux | grep Enemy | wc -l)-1))
	;;

	"verify_oxygen_generator")
		verify_requirements 3
		echo "Oxygen engine witch [ON]."
		diff "$2" "$LAB_BACKEND/oxygen/oxygen_engine.anwser" \
		&& diff "$3" "$LAB_BACKEND/oxygen/oxygen_filter.anwser" \
		&& lsblk | grep -q 'loop'
		RESULT=$?
		
		for i in "Compressing gas[1/3]" "Loading Oxygen[2/3]" "Starting rotors[3/3]"
		do
			echo "$i.."
			sleep 1
		done
	;;
	
	"verify_ressources_collected")
		verify_requirements 6
		diff "$2" $LAB_BACKEND/ressources/laskite.anwser \
		&& diff "$3" $LAB_BACKEND/ressources/irinite.anwser \
		&& diff "$4" $LAB_BACKEND/ressources/nexarium.anwser \
		&& diff "$5" $LAB_BACKEND/ressources/upprixite.anwser \
		&& diff "$6" $LAB_BACKEND/ressources/xamanite.anwser
		RESULT=$?
		
		for i in "Analysing samples[1/2]" "Evaluating purity[2/2]"
		do
			echo "$i.."
			sleep 1
		done
	;;

	"help"|"-h")
		verify_requirements 1
		echo -e "${DIM}Lab command helper${RESET}"
		echo ""
		echo -e "${BOLD}DESCRIPTION${RESET}"
		echo "This tool helps you through linux lab validation tasks."
		echo ""
		echo -e "${BOLD}SYNTAX${RESET}"
		echo "lab <cmd>"
		echo ""
		echo -e "${BOLD}OPTIONS${RESET}"
		echo -e "•${CYAN} help ${RESET}: ${DIM}Display this help page.${RESET}"
		echo -e "•${CYAN} verify_event_report ${RESET}<${MAGENTA}event_report file path${RESET}> : ${DIM}Verify that event report is correct.${RESET}"
		echo -e "•${CYAN} verify_count_report ${RESET}<${MAGENTA}count_report file path${RESET}> : ${DIM}Verify that count report is correct.${RESET}"
		echo -e "•${CYAN} verify_hostname ${RESET}: ${DIM}Verify that hostname is correctly configured.${RESET}"
		echo -e "•${CYAN} verify_network ${RESET}: ${DIM}Verify that network is working.${RESET}"
		echo -e "•${CYAN} verify_war_victory ${RESET}: ${DIM}Verify that all enemies are defeated.${RESET}"
		echo -e "•${CYAN} verify_oxygen_generator ${RESET}<${MAGENTA}oxygen_engine file path${RESET}> <${MAGENTA}oxygen_filter file path${RESET}> : ${DIM}Verify that oxygen system is correctly working.${RESET}"
		echo -e "•${CYAN} verify_ressources_collected ${RESET}<${MAGENTA}laskite file path${RESET}> <${MAGENTA}irinite file path${RESET}> <${MAGENTA}nexarium file path${RESET}> <${MAGENTA}upprixite file path${RESET}> <${MAGENTA}xamanite file path${RESET}> : ${DIM}Verify that all ressources are collected.${RESET}"
		echo -e "•${CYAN} start_attack ${RESET}: ${DIM}Launch the enemy attack.${RESET}"
		exit 0		
	;;

	*)
		echo "'$cmd' option does not exists."
		echo "Type 'lab help' to get further informations."
		exit 1
		;;
esac


if [ "$RESULT" -eq "0" ]; then
	echo_status "success" "You successfully validated this step."
else
	echo_status "error" "You failed this step. Try again."
fi


