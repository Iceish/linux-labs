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

	"help")
		echo "Lab command"
		echo ""
		echo "DESCRIPTION"
		echo "This is an alias that launch '.backend\\index.sh file with parameters.'"
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

