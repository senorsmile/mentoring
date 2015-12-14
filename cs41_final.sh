#!/bin/bash


###########################
###FUNCTION DECLARATIONS###
###########################

show_banner() {
  echo "Name of Server: $servName\n
        Server IP Address: $servIP\n
        Number of Current Users: $noUsers\n
        Date and time: $date_and_time\n
        OS Version: $osVersion\n
        User Name of party: $nameUser\n\n"
  exit 1
}


list_active_procs() {
  # do something
  exit 2
}


monitor_active_procs() {
  # do something
  exit 3
}


live_monitor() {
  # do something
  exit 9
}


###########################
#######MAIN  PROGRAM####### 
###########################

# Menu displays and executes options

while [ $userIn != "0" ]; 
do
  # call function show_banner() {

  echo "Please select from the following processes: 

        1. List currently logged in users
        2. List all active processes for a user.
        3. Monitor active processes for user.
        4. Kill a process
        5. Show the last 10 users logged in
        6. Show free disk space
        7. show disk space used by user home dir (prompt username)
        8. Find large files (>100MB)
        9. Live monitor 
        0. Exit"

  read userIn
      
  if [ userIn = "1" ]; then
    # list currently logged in users
    :

  elif [ userIn = "2" ]; then
    echo -n "Please enter user name: "
    read userName
    # do something: list all active process

  elif [ userIn = "3" ]; then
    echo -n "Please enter user name: "
    read userName
    # do something: Monitor active processes

  elif [ userIn = "4" ]; then
    # do something
    :

  elif [ userIn = "5" ]; then 
    echo "Last 10 users logged in: "
    # call a for loop?
    # do something

  elif [ userIn = "6" ]; then
    # do someting

  elif [ userIn = "7" ]; then
    echo -n "Please enter user name: "
    read userName
    # do something: Show diskspace used by home dir.

  elif [ userIn = "8" ]; then
   # do something

  elif [ userIn = "9" ]; then
    # do someting: Live monitor
        # calls second script
        # (shows time, CPU util, current memory utilization, 
        #  current disk space utiliztion, currently logged in users. 
        #  Refreshes every 5 seconds until any key is pressed.)

  else 
    echo "Invalid input.  Please select a valid option. "
  fi
done


