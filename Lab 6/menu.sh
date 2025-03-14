#!/bin/bash

while true; do
    # Main Menu
    whiptail --title "This is the main menu" --yesno "Would you like to proceed or exit the program?" 20 70

    # If the user selects "Yes" (continue)
    if [ $? -eq 0 ]; then
        choice=$(whiptail --menu "Please, Choose one of the following tools:" 20 70 4 \
            "1" "AWK" \
            "2" "GREP" \
            "3" "EXIT" 3>&1 1>&2 2>&3)

        # If user chooses AWK
        if [ "$choice" == "1" ]; then
            file=$(whiptail --inputbox "Please enter the file name:" 20 70 3>&1 1>&2 2>&3)
            if [ -f "$file" ]; then
                result=$(awk -F, '{print $2}' "$file" | tr -d '\r')
                whiptail --msgbox "$result" 20 70
            else
                whiptail --msgbox "File not found!" 20 70
            fi
        fi

        # If user chooses GREP
        if [ "$choice" == "2" ]; then
            file2=$(whiptail --inputbox "Please enter the file name:" 20 70 3>&1 1>&2 2>&3)
            if [ -f "$file2" ]; then
                result2=$(grep 'e' "$file2" | tr -d '\r')
                whiptail --msgbox "$result2" 20 70
            else
                whiptail --msgbox "File not found!" 20 70
            fi
        fi

        # If user chooses EXIT
        if [ "$choice" == "3" ]; then
            exit 0
        fi

    else
        # If the user selects "No" (exit)
        exit 0
    fi
done
#!/bin/bash

while true; do
	whiptail --title "This is the main menu" --yesno "Would you like to proceed or exit the program?" 20 70

	if [ $? -eq 0 ]; then
		choice=$(whiptail --menu "Please, Choose one of the following tools:" 20 70 4 \ "1" "AWK"\ "2" "GREP" \ "3" "EXIT" 3>&1 1>&2 2>&3)

		if [ "$choice" == "1" ]; then
			file=$(whiptail --inputbox "Please enter the file name:" 20 70 3>&1 1>&2 2>&3)
			result=$(awk -F, '{print $2}' "$file" | tr -d '\r')
			whiptail --msgbox "$result" 20 70
		fi

		if [ "$choice" == "2" ]; then
			file2=$(whiptail --inputbox"Please enter the file name:" 20 70 3>&1 1>&2 2>&3)
			result2=$(grep 'e' "$file2" | tr -d '\r')
			whiptail --msgbox "$result2" 20 70
		fi
	else
		exit 0
	fi
done





