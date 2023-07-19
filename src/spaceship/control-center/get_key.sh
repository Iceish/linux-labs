#!/bin/bash

if [ "$USER" != "h4cker-lab" ];then
	echo "ERROR: You are not 'h4cker-lab', you won't get my key !"
	exit 1
fi

key=$(echo 'c3VwZXJfc2VjcmV0X2tleTEyMwo=' | base64 -d )

echo "The key is : $key"
