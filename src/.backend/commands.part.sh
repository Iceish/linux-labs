# This file should not be executed directly. Use `lab` command instead.
# Iceish.

if [ -z "${CMD}" ];then
	echo "ERROR: you should not execute this script explicitly. Verify that you initialized the lab with setup.sh, and use \`lab\` command instead. Read the README.md for further informations."
	exit 1
fi

case "$CMD" in
	"verify_dormitories")
		verify_requirements 2
		dormitories_paths=(\
			"/one/diana.conf"\
			"/one/jake.conf"\
			"/one/mike.conf"\
			"/one/karen.conf"\
			"/two/victor.conf"\
			"/two/padawan.conf"\
		)

		RESULT=0
		for d_path in ${dormitories_paths[@]}; do
			echo "$2${d_path}"
			if [ -f "$2${d_path}" ];then
				echo -e "=> ${GREEN}OK${RESET}"
				echo ""
			else
				echo -e "=> ${YELLOW}KO${RESET}"
				echo ""
				RESULT=1
			fi
		done
	;;

	"verify_reactors")
		verify_requirements 2
		diff "$2" "${LAB_BACKEND}/reactors/engine.anwser1" &> /dev/null \
		|| diff "$2" "${LAB_BACKEND}/reactors/engine.anwser2" &> /dev/null
		RESULT=$?

		display_fake_event "Loading fuel" "Compressing gas" "Starting engines"
	;;

	"verify_storage")
		verify_requirements 3
		RESULT=1
		if [ -f "$2" ] && [ -f "$3" ];then

			TMP="${LAB_BACKEND}/storage/"

			rm -rf "${TMP}" 2>/dev/null

			mkdir -p "${TMP}/stuff"
			mkdir -p "${TMP}/vegetables"

			unzip -qq "$2" -d "${TMP}/vegetables" 
			tar -xzf "$3" -C "${TMP}/stuff"

			declare -A storage_items=(
				["ammunitions"]="/stuff/ammunitions .loader 21"
				["knives"]="/stuff/knives .knife 12"
				["cucumbers"]="/vegetables/cucumbers .cucumber 43"
				["potatoes"]="/vegetables/potatoes .potato 67"
				["tomatoes"]="/vegetables/tomatoes .tomato 34"
			)
			RESULT=0
			for storage_item in "${!storage_items[@]}"; do
				storage_path=$(echo "${storage_items[$storage_item]}" | cut -d ' ' -f 1)
				storage_pattern=$(echo "${storage_items[$storage_item]}" | cut -d ' ' -f 2)
				storage_expected_count=$(echo "${storage_items[$storage_item]}" | cut -d ' ' -f 3)

				storage_count=$(ls -1 "${TMP}/${storage_path}" | grep -c "$storage_pattern")

				echo -n "[$storage_item] "
				if [ "$storage_count" -eq "$storage_expected_count" ]; then
					echo -e "${GREEN}OK${RESET}"
				else
					echo -e "${YELLOW}KO${RESET}"
					RESULT=1
				fi
			done
		fi
	;;

	"start_console")
		verify_requirements 1
		
		sudo useradd h4cker-lab
		RESULT=0

		display_fake_event "Console loading" "Indexing files"
	;;

	"decrypt_spaceship")
		verify_requirements 2

		display_fake_event "Reading key" "Trying to decrypt data"
		
		if [ $(echo "$2" | base64) == "c3VwZXJfc2VjcmV0X2tleTEyMwo=" ];then
			sudo cp "${LAB_BACKEND}/control-center/control.log" .
			sudo chown h4cker-lab:h4cker-lab "./control.log"
			sudo chmod 500 "./control.log"
			echo -e "${DIM}Correct key. Now you have access to control logs.${RESET}"
			RESULT=0
		else
			echo -e	"${DIM}Wrong key.${RESET}"
			RESULT=1
		fi
		
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
		echo -e "•${CYAN} verify_dormitories ${RESET}<${MAGENTA}dormitories folder path${RESET}> : ${DIM}Verify that dormitories configuration is correct.${RESET}"
		echo -e "•${CYAN} verify_reactors ${RESET}<${MAGENTA}engine.conf file${RESET}> : ${DIM}Verify the engine configuration file.${RESET}"
		echo -e "•${CYAN} verify_storage ${RESET}<${MAGENTA}vegetables zip file${RESET}> <${MAGENTA}stuff targz file${RESET}>: ${DIM}Verify that storage room is tidy.${RESET}"
		echo -e "•${CYAN} start_console ${RESET}: ${DIM}Start the control center console.${RESET}"
		echo -e "•${CYAN} decrypt_spaceship ${RESET}<${MAGENTA}key${RESET}> : ${DIM}Start the control center console.${RESET}"
                exit 0
        ;;

        *)
                echo -e "${RED}'$cmd' option does not exists.${RESET}"
                echo -e "${DIM}Type 'lab help' to get further informations.${RESET}"
                exit 1
                ;;
esac
