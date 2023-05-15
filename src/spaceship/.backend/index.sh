#/bin/bash

if [ "$1" == "check_event" ]; then
	diff "event_landing_report.txt" "./.backend/event_landing_report.anwser" &> /dev/null
	if [ "$?" -eq "0" ]; then
		echo "succed";
	else
		echo "failed";
	fi

fi

if [ "$1" == "check_count" ]; then
	diff "count_landing_report.txt" "./.backend/count_landing_report.anwser" &> /dev/null
	if [ "$?" -eq "0" ]; then
		echo "succed";
	else
		echo "failed";
	fi

fi
