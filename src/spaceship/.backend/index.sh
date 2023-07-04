#/bin/bash

cmd="$1"
case "$cmd" in

	"check_event" )
		diff "event_landing_report.txt" "./.backend/event_landing_report.anwser" &> /dev/null
		if [ "$?" -eq "0" ]; then
			echo "succed";
		else
			echo "failed";
		fi
	;;

	"check_count")
		diff "count_landing_report.txt" "./.backend/count_landing_report.anwser" &> /dev/null
		if [ "$?" -eq "0" ]; then
			echo "succed";
		else
			echo "failed";
		fi
	;;

	"check_hostname")
		diff "/etc/hostname" "./.backend/hostname.anwser" &> /dev/null
		one=$?
		echo "$(cat /etc/hosts | grep 127.0.1.1 | tr -s ' ' | cut -d ' ' -f 2)" &> ./.backend/hosts.tmp
		diff "./.backend/hosts.tmp" "./.backend/hostname.anwser" &> /dev/null
		two=$?
		result=$(($one + $two))
		echo $result
		if  [ "$result" -eq "0" ]; then
			echo "succed";
		else
			echo "failed";
		fi

		rm -f "./.backend/hosts.tmp"
	;;

	"check_network")
		cat /etc/network/interfaces 2> /dev/null | grep "inet static" &> /dev/null
		one=$?
		ping -c 1 google.fr &> /dev/null
		two=$?
		result=$(($one + $two)) 
		if [ "$result" -eq "0" ]; then
			echo "succed";	
		else
			echo "failed";
		fi
	;;

	"start_attack")
		gcc -s ./.backend/cz.c -o ./.backend/cz
		chmod +x ./.backend/cz
		./.backend/cz 25 & &> /dev/null
		rm -f ./.backend/cz &> /dev/null
		echo "You see a horde of zombies attacking you. Defend yourself !"
	;;

	"launch_drones")
		echo "Drones are scanning surroundings."
		for i in "Valley[1/3]" "Mountains[2/3]" "Fields[3/3]"
		do
			echo "Scanning $i.."
			sleep 1
		done
		if [ "$(ps aux | grep Enemy | wc -l)" == "1" ]; then
			echo "succed";
		else
			echo "failed";
		fi	
	;;

	"help")
		echo "Lab command"
		echo ""
		echo "DESCRIPTION"
		echo "This is an alias that launch '.backend\\index.sh' file with parameters."
		echo ""
		echo "SYNTAX"
		echo "lab <cmd>"
		echo ""
		echo "OPTIONS"
		echo "- help : Display this help page."
		echo "- check_event : Check if landing event report is correct."
		echo "- check_count : Check if landing count report is correct."
	;;

	*)
		echo "'$cmd' option does not exists."
		echo "Type 'lab help' to get further informations."
		;;
esac

