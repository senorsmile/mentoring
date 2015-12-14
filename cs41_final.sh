#!/bin/bash




#-------------------------------------
#- ******* DISPLAY FUNCTIONS ******* -
#-------------------------------------

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

option_picked(){
    COLOR='\033[01;31m' # bold red
    RESET='\033[00;00m' # normal white
    MESSAGE=${@:-"${RESET}Error: Invalid Option."}
    echo -e "${COLOR}${MESSAGE}${RESET}"
}
#_____________________________________




#------------------------------------
#- ******** MENU FUNCTIONS ******** - 
#------------------------------------

#----- Option 0 -----
goodBye(){
  NORMAL=`echo "\033[m"`
  MENU=`echo "\033[36m"` #Blue
  RED_TEXT=`echo "\033[31m"`
  echo -e "${MENU}*********************************************${NORMAL}"
  echo -e "${MENU}***************** ${RED_TEXT}GOOD BYE ${MENU}******************${NORMAL}"
  echo -e "${MENU}*********************************************${NORMAL}"
}

#----- Option 1 -----
currentUsers(){
  echo "IN PROGRESS"; 
  #display list of current users
}

#----- Option 2 -----
listActiveProcess(){
  echo "IN PROGRESS"; 
  #do something with $userName
  #displays list of all active processes for given user name
}

#----- Option 3 -----
MonitorActiveProcess(){
  echo "IN PROGRESS"; 
  #do something with $userName
  #displays active processes for given user name
}

#----- Option 4 -----
killProcess(){
  echo "IN PROGRESS"; 
  #display currently running processes
  #prompt user for name of process to kill
  #check for validity - prompt if false
  #kill process (may need to print out to screen)
}

#----- Option 5 -----
lastUsers(){
  echo "IN PROGRESS"; 
  #display last ten users
}

#----- Option 6 -----
freeDiskSpace(){
  echo "IN PROGRESS"; 
  #display free disk space
}

#----- Option 7 -----
userDiskSpace(){
  echo "IN PROGRESS"; 
  #do something with $userName
  #write function that displays userName's free disk space in home dir
}

#----- Option 8 -----
fileGE100MB(){
  echo "IN PROGRESS"; 
  #write function that displays all files greater than 100MB
}

#----- Option 9 -----
liveMonitor(){
  NORMAL=`echo "\033[m"`
  MENU=`echo "\033[36m"` #Blue
  NUMBER=`echo "\033[33m"` #yellow
  FGRED=`echo "\033[41m"`
  RED_TEXT=`echo "\033[31m"`
  ENTER_LINE=`echo "\033[33m"`
  echo -e "${MENU}*********************************************${NORMAL}"
  echo -e "${MENU}*************** Live Monitor ***************${NORMAL}"
  echo -e "${MENU}*********************************************${NORMAL}"
  echo -e "${MENU}${NUMBER} Time:${MENU} $time ${NORMAL}"
  echo -e "${MENU}${NUMBER} CPU Utilization:${MENU} $utilCPU ${NORMAL}"
  echo -e "${MENU}${NUMBER} Memory Utilization: ${MENU} $utilMem ${NORMAL}"
  echo -e "${MENU}${NUMBER} Current Logged-in User:${MENU} $dateTime ${NORMAL}"
  echo -e "${MENU}${NUMBER} OS Version:${MENU} $osVersion ${NORMAL}"
  echo -e "${MENU}${NUMBER} Current User Name:${MENU} $userName ${NORMAL}"
  echo -e "${MENU}*********************************************${NORMAL}"
  echo -e "${RED_TEXT}Please enter 'q' and hit Enter to exit Live Monitor. ${NORMAL}"  
  echo -e "${MENU}*********************************************${NORMAL}"
  read quitChoice
  
  #write function that refreshes live_monitor until 'q' or 'Q' is typewhile quitChoice != 'q'
 }
#_____________________________________



#-------------------------------------
#- ********* MAIN FUNCTION ********* -
#-------------------------------------
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
        currentUsers
        show_menu;
        ;;

        2) clear;
        option_picked "Option 2: List of active processes for user ${userName}";
        echo "Currently logged-in users:";
        currentUsers;
        echo "Please select from available list.";
        read userName;
        #do something: check for validity, if not valid, prompt again. when true do something
        listActiveProcess;
        show_menu;       show_menu;
        ;;

        3) clear;
        option_picked "Option 3: Monitor active processes for user ${userName}";
        echo "Currently logged-in users:";
        currentUsers;
        echo "Please select from available list.";
        read userName;
        #do something: check for validity, if not valid, prompt again. when true do something
        monitorActiveProcess;
        show_menu;
        ;;

        4) clear;
        option_picked "Option 4: Kill Process";
        killProcess;
        show_menu;
        ;;

        5) clear
        option_picked "Option 5: Show last 10 users";
        lastUsers; 
        #do something
        show_menu;
        ;;

        6) clear;
        option_picked "Option 6: Show free disk space";
        freeDiskSpace;
        show_menu;
        ;;

        7) clear;
        option_picked "Option 7: Show disk space for user home directory";
        echo "Currently logged-in users:";
        currentUsers;
        echo "Please select from available list.";
        read userName;
        #do something: check for validity, if not valid, prompt again. when true do something
        userDiskSpace;
        show_menu;
        ;;
        
        8) clear;
        option_picked "Option 8: Find files larger than 100MB";
        fileGE100MB;
        show_menu;
        ;;

        9) clear;
        option_picked "Option 9: Live Monitor";
        liveMonitor;
        show_menu;
        ;;

        0) clear;
        goodBye;
        exit;
        ;;

      esac
    fi
done
