#!/bin/sh

YELLOW='\033[0;33m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

paths=(\
	"/one/diana.conf"\
	"/one/jake.conf"\
	"/one/mike.conf"\
	"/one/karen.conf"\
	"/two/victor.conf"\
	"/two/padawan.conf"\
)

echo "================================"
echo "|      Dormitories Checker     |"
echo "================================"
echo ""

for str in ${paths[@]}; do
	echo ".$str"
	if [ -f "$(pwd)$str" ];then
		echo -e "=> ${GREEN}OK${NC}"
		echo ""
	else
		echo -e "=> ${YELLOW}KO${NC}"
		echo ""
	fi
done

