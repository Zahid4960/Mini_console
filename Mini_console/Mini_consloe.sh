#!/bin/bash

while :
do
#starting of header part
clear
echo "                                                              Mini Console"
echo "                                                  Developed by Department of CSE DIU"
#Closing of header part

echo
echo
echo

#Starting of menu
echo "                                                         1. Date"
echo "                                                         2. Time"
echo "                                                         3. Calendar"
echo "                                                         4. User"
echo "                                                         5. IP Address"
echo "                                                         6. Contacts"
echo "                                                         7. Notebook"
echo "                                                         8. Calculator"
echo "                                                         9. Music"
echo "                                                        10. Videos"
echo "                                                        11. About us"
echo "                                                        12. Exit"
#Closing of menu

echo
echo
echo -ne "                                                  Please enter your choice:"
read choice
echo
echo

case $choice in
	 1)clear
       echo "                                                           Date"
       echo
       echo 
       date +'%d-%m-%Y' 
       ;; # functionality for date


	 2)clear
      echo "                                                            Time"
      echo "                                                       1. 12 Hours format"
      echo "                                                       2. 24 Hours format"
      echo
      echo
      echo -ne "                                                 Pleae enter your choice"
      read time_choice
      echo
      echo
      if [ $time_choice -eq 1 ]
      	then
      		clear
      		echo "                                                Time in 12 hours format"
      		date +'%r'

      elif [ $time_choice -eq 2 ]
      	then 
      		clear
      		echo "                                                Time in 24 hours format"
      	    date +'%T'
      else
      	clear
      	echo "                                     You have pressed incorrect button"
      fi ;; # functionality for time 


	 3);;
	 4);;
	 5);;
	 6);;
	 7);;
	 8);;
	 9);;
	10);;
	11);;
	12)clear
       break;;
     *);;

esac;

echo
echo
echo -ne "                              Press 12 to exit and anything to return main menu:"
read confirm

if [ $confirm -eq 12 ]
then
	#clear
	break
fi
done