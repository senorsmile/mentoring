#!/bin/bash

show_banner(){
  NORMAL=`echo "\033[m"`
  MENU=`echo "\033[36m"` #Blue
  NUMBER=`echo "\033[33m"` #yellow
  FGRED=`echo "\033[41m"`
  RED_TEXT=`echo "\033[31m"`
  ENTER_LINE=`echo "\033[33m"`
  echo -e "${MENU}*********************************************${NORMAL}"
  echo -e "${MENU}*************** System Report ***************${NORMAL}"
  echo -e "${MENU}*********************************************${NORMAL}"
  echo -e "${MENU}${NUMBER} Name of Server:${MENU} $servName ${NORMAL}"
  echo -e "${MENU}${NUMBER} Server IP Address:${MENU} $servIP ${NORMAL}"
  echo -e "${MENU}${NUMBER} Number of Current Users: ${MENU} $numUsers ${NORMAL}"
  echo -e "${MENU}${NUMBER} Date and Time:${MENU} $dateTime ${NORMAL}"
  echo -e "${MENU}${NUMBER} OS Version:${MENU} $osVersion ${NORMAL}"
  echo -e "${MENU}${NUMBER} Current User Name:${MENU} $userName ${NORMAL}"
  echo -e "${MENU}*********************************************${NORMAL}"
  echo -e "${MENU}*********************************************${NORMAL}"
}

show_menu(){
    NORMAL=`echo "\033[m"`
    MENU=`echo "\033[36m"` #Blue
    NUMBER=`echo "\033[33m"` #yellow
    FGRED=`echo "\033[41m"`
    RED_TEXT=`echo "\033[31m"`
    ENTER_LINE=`echo "\033[33m"`
    echo -e "${MENU}*****************************************************************${NORMAL}"
    echo -e "${ENTER_LINE}Please select from the above options and enter. ${RED_TEXT}Enter 0 to exit. ${NORMAL}"  
    echo -e "${MENU}*****************************************************************${NORMAL}"
    echo -e "${MENU}${NUMBER} 1)${MENU} List currently logged-in users ${NORMAL}"
    echo -e "${MENU}${NUMBER} 2)${MENU} List all active processes for a user ${NORMAL}"
    echo -e "${MENU}${NUMBER} 3)${MENU} Monitor active processes for a user ${NORMAL}"
    echo -e "${MENU}${NUMBER} 4)${MENU} Kill a process ${NORMAL}"
    echo -e "${MENU}${NUMBER} 5)${MENU} Show last 10 users ${NORMAL}"
    echo -e "${MENU}${NUMBER} 6)${MENU} Show free disk space ${NORMAL}"
    echo -e "${MENU}${NUMBER} 7)${MENU} Show diskpace use by user ${NORMAL}"
    echo -e "${MENU}${NUMBER} 8)${MENU} Find large files (>100MB) ${NORMAL}"
    echo -e "${MENU}${NUMBER} 9)${MENU} Display live monitor ${NORMAL}"
    echo -e "${MENU}${NUMBER} 0)${MENU} Exit ${NORMAL}"
    echo -e "${MENU}*****************************************************************${NORMAL}"
    read userChoice
}

function option_picked() {
    COLOR='\033[01;31m' # bold red
    RESET='\033[00;00m' # normal white
    MESSAGE=${@:-"${RESET}Error: Invalid Option."}
    echo -e "${COLOR}${MESSAGE}${RESET}"
}

good_bye(){
  NORMAL=`echo "\033[m"`
  MENU=`echo "\033[36m"` #Blue
  RED_TEXT=`echo "\033[31m"`
  echo -e "${MENU}*********************************************${NORMAL}"
  echo -e "${MENU}***************** ${RED_TEXT}GOOD BYE ${MENU}******************${NORMAL}"
  echo -e "${MENU}*********************************************${NORMAL}"
}
clear
show_banner
echo " ";
show_menu

while [ userChoice != '0' ]
    do
    if [[ $userChoice = "0" ]]; then
      good_bye
      exit;
    
    else
      case $userChoice in
        1) clear;
        option_picked "Option 1: List of current Users";
        #do something
        show_menu;
        ;;

        2) clear;
        option_picked "Option 2: List of active processes for user ${userName}";
        #do something
        show_menu;
        ;;

        3) clear;
        option_picked "Option 3: Active processes for user ${userName}";
        #do something;
        show_menu;
        ;;

        4) clear;
        option_picked "Option 4: Kill Process";
        #do something
        show_menu;
        ;;

        5) clear
        option_picked "Option 5: Show last 10 users";
        #do something
        show_menu;
        ;;

        6) clear;
        option_picked "Option 6: Show free disk space";
        #do something
        show_menu;
        ;;

        7) clear;
        option_picked "Option 7: Show disk space for user home directory";
        #do something
        show_menu;
        ;;
        
        8) clear;
        option_picked "Option 8: Find files larger than 100MB";
        #do something
        show_menu;
        ;;

        9) clear;
        option_picked "Option 9: Live Monitor";
        #do something
        show_menu;
        ;;

        0)exit;
        ;;

      esac
    fi
done
