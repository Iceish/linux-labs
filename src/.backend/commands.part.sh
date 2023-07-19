# This file should not be executed directly. Use `lab` command instead.
# Enzo Gz.

if [ -z "${CMD}" ];then
	echo "ERROR: you should not execute this script explicitly. Verify that you initialized the lab with setup.sh, and use \`lab\` command instead. Read the README.md for further informations."
	exit 1
fi

case "$CMD" in                                                                                                                                                                                                                                
                                                                                                                                                                                                                                              
        "verify_event_report" )                                                                                                                                                                                                               
                verify_requirements 2                                                                                                                                                                                                         
                diff "$2" "$LAB_BACKEND/control/event_landing_report.anwser" &> /dev/null                                                                                                                                                     
                RESULT=$?                                                                                                                                                                                                                     
                                                                                                                                                                                                                                              
                display_fake_event "Analysing report.." "Sending a copy"                                                                                                                                                                      
        ;;                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                              
        "verify_count_report")                                                                                                                                                                                                                
                verify_requirements 2                                                                                                                                                                                                         
                diff "$2" "$LAB_BACKEND/control/count_landing_report.anwser" &> /dev/null                                                                                                                                                     
                RESULT=$?                                                                                                                                                                                                                     
                                                                                                                                                                                                                                              
                display_fake_event "Analysing report.." "Sending a copy"                                                                                                                                                                      
        ;;                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                              
        "verify_hostname")                                                                                                                                                                                                                    
                verify_requirements 1                                                                                                                                                                                                         
                diff "/etc/hostname" "$LAB_BACKEND/connection/hostname.anwser" &> /dev/null \
		&& echo "$(cat /etc/hosts | grep 127.0.1.1 | tr -s ' ' | cut -d ' ' -f 2)" &> "$LAB_BACKEND/connection/hosts.tmp" \
		&& diff "$LAB_BACKEND/connection/hosts.tmp" "$LAB_BACKEND/connection/hostname.anwser" &> /dev/null                                                                                                                            
                RESULT=$?                                                                                                                                                                                                                     
                                                                                                                                                                                                                                              
                rm -f "$LAB_BACKEND/connection/hosts.tmp"                                                                                                                                                                                     
                                                                                                                                                                                                                                              
                display_fake_event "Checking hostname"                                                                                                                                                                                        
        ;;  
	
	"verify_network")
                verify_requirements 1
                cat /etc/network/interfaces 2> /dev/null | grep "inet static" &> /dev/null \
                && ping -c 1 google.com &> /dev/null
                RESULT=$?

                display_fake_event "Connecting to nodes" "Etablishing routing" "TCP Handshake"
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
                diff "$2" "$LAB_BACKEND/oxygen/oxygen_engine.anwser" &>/dev/null \
                && diff "$3" "$LAB_BACKEND/oxygen/oxygen_filter.anwser" &>/dev/null \
                && lsblk | grep -q 'loop'
                RESULT=$?

                display_fake_event "Compressing gas" "Loading Oxygen" "Starting rotors"
        ;;

	"verify_ressources_collected")
                verify_requirements 6
                diff "$2" $LAB_BACKEND/ressources/laskite.anwser &>/dev/null \
                && diff "$3" $LAB_BACKEND/ressources/irinite.anwser &>/dev/null \
                && diff "$4" $LAB_BACKEND/ressources/nexarium.anwser &>/dev/null \
                && diff "$5" $LAB_BACKEND/ressources/upprixite.anwser &>/dev/null \
                && diff "$6" $LAB_BACKEND/ressources/xamanite.anwser &>/dev/null
                RESULT=$?

                display_fake_event "Analysing samples" "Evaluating purity"
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
                echo -e "${RED}'$cmd' option does not exists.${RESET}"
                echo -e "${DIM}Type 'lab help' to get further informations.${RESET}"
                exit 1
                ;;
esac
