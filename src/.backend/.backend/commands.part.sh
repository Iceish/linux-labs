# This file should not be executed directly. Use `lab` command instead.
# Enzo Gz.

if [ -z "${CMD}" ];then
	echo "ERROR: you should not execute this script explicitly. Verify that you initialized the lab with setup.sh, and use \`lab\` command instead. Read the README.md for further informations."
	exit 1
fi

case "$CMD" in                                                                                                                                                                                                                                
                                                                                                                                                                                                                                              
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
                exit 0
        ;;

        *)
                echo -e "${RED}'$cmd' option does not exists.${RESET}"
                echo -e "${DIM}Type 'lab help' to get further informations.${RESET}"
                exit 1
                ;;
esac
