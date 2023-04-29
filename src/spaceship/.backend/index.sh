#/bin/bash

if [ "$1" == "check" ]; then
	diff "logs.txt" "./.backend/logs_res.txt" &> /dev/null
	if [ "$?" -eq "0" ]; then
		echo "succed";
	else
		echo "failed";
	fi

fi
