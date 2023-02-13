#!/bin/bash

YELLOW='\033[0;33m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color


echo "================================"
echo "|       Storage Checker        |"
echo "================================"
echo ""
TMP="/tmp/linux-labs.tmp/"

rm -rf ${TMP} 2>/dev/null

mkdir -p ${TMP}stuff
mkdir -p ${TMP}vegetables

tar -xzf stuff.tar.gz -C ${TMP}stuff
unzip -qq vegetables.zip -d ${TMP}vegetables 

echo -n "[ammunitions] ";[ $(ls -1 ${TMP}stuff/ammunitions | grep .loader | wc -l) == '21' ] && echo -e "${GREEN}OK${NC}" || echo -e "${YELLOW}KO${NC}"
echo -n "[knives] ";[ $(ls -1 ${TMP}stuff/knives | grep .knife | wc -l) == '12' ] && echo -e "${GREEN}OK${NC}" || echo -e "${YELLOW}KO${NC}"


echo -n "[cucumbers] ";[ $(ls -1 ${TMP}vegetables/cucumbers | grep .cucumber | wc -l) == '43' ] && echo -e "${GREEN}OK${NC}" || echo -e "${YELLOW}KO${NC}"
echo -n "[potatoes] ";[ $(ls -1 ${TMP}vegetables/potatoes | grep .potato | wc -l) == '67' ] && echo -e "${GREEN}OK${NC}" || echo -e "${YELLOW}KO${NC}"
echo -n "[tomatoes] ";[ $(ls -1 ${TMP}vegetables/tomatoes | grep .tomato | wc -l) == '34' ] && echo -e "${GREEN}OK${NC}" || echo -e "${YELLOW}KO${NC}"
