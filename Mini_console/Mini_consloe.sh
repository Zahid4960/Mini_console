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


	 2);;
	 3);;
	 4);;
	 5);;
	 6);;
	 7);;
	 8);;
	 9);;
	10);;
	11);;
	12)break;;
     *);;

esac;

echo
echo
echo -ne "                              Press 12 to exit and anything to return main menu:"
read confirm

if [ $confirm -eq 12 ]
then
	break
fi
done