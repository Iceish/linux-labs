#!/bin/bash

[[ "${BASH_SOURCE[0]}" != "${0}" ]] || {
	echo "/!\ You have to source this script."
	echo "> source setup.sh"
	exit 1
}

export LAB_BACKEND="$(pwd)/.backend"
alias lab=$LAB_BACKEND/index.sh

echo "You successfully initialized this linux lab."
echo "Enjoy !"
echo "- EnzoGz"
