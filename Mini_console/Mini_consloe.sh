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
echo "                                                         4. On this day"
echo "                                                         5. Current User"
echo "                                                         6. IP Address"
echo "                                                         7. Contacts"
echo "                                                         8. Notebook"
echo "                                                         9. Calculator"
echo "                                                        10. Music"
echo "                                                        11. Videos"
echo "                                                        12. About us"
echo "                                                        13. Exit"
#Closing of menu

echo
echo
echo -ne "                                                  Please press button of your choice:"
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
      echo -ne "                                             Please press button of your choice:"
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


	 3)clear
       echo "                                                         Calendar"
       echo
       echo
       cal;; # functionality for calendar


	 4)clear
       echo "                                                       On this day"
       echo
       echo
       calendar;; #functionality for on this day


	 5)clear
      echo "                                              Current user name of this device"
      echo
      echo
      echo "                                           Current user name of this device is $USER"
      ;; # functionality for user


	 6)clear
       echo "                                                  IP Address"
       echo
       echo
       echo "                                                      1. IPv4"
       echo "                                                      2. Subnet mask"
       echo "                                                      3. Broadcast Address"
       echo "                                                      4. Details"
       echo
       echo
       echo -ne "                                           Please press button of your choice: "
       read IP_choice

       if [ $IP_choice -eq 1 ]
       	then
       		clear
       		echo "                                                    IPv4"
       		echo
       		echo
       		echo "                    Internet protocol version 4 for this device is 192.168.0.104 "

       elif [ $IP_choice -eq 2 ]
       	then
       		clear
       		echo "                                                  Subnet Mask"
       		echo
       		echo
       		echo "                            Subnet Mask for this device is 255.255.255.0  "

        elif [ $IP_choice -eq 3 ]
       	 then
       	 	clear
       		echo "                                                  Broadcast Address"
       		echo
       		echo
       		echo "                           Broadcast Address for this device is 192.168.0.255"

       	elif [ $IP_choice -eq 4 ]
       	 then
       	 	clear
       		echo "                                  Details IP Addresses for this device "
       		echo
       		echo
       		ifconfig

       	else
       		clear
       		echo "                                     You have pressed incorrect button"
       	fi;; # functionality for IP Address

	 7);;
	 8);;
	 9)clear
        echo "                                                     Calculator"
        echo
        echo
        echo "                                                        1. Addition"
        echo "                                                        2. Subtraction"
        echo "                                                        3. Multiplication"
        echo "                                                        4. Division"
        echo
        echo
        echo -ne "                                           Please press button of your choice: "
        read Calculator_choice

        if [ $Calculator_choice -eq 1 ]
          then
          	clear
          	echo "                                                       Addition"
          	echo
          	echo
        	echo -ne "                                              Enter 1st number:"
        	read num1
        	echo
            echo -ne "                                              Enter 2nd number:"
            read num2
            result=$(($num1 + $num2))
            echo
            echo
            echo "                                             Addition of $num1 and $num2 is :$result"

        elif [ $Calculator_choice -eq 2 ]
          then
          	clear
          	echo "                                                        Subtraction"
          	echo
          	echo
        	echo -ne "                                              Enter 1st number:"
        	read num1
        	echo
            echo -ne "                                              Enter 2nd number:"
            read num2
            result=$(($num1 - $num2))
            echo
            echo
            echo "                                            Subtraction of $num1 and $num2 is :$result"

        elif [ $Calculator_choice -eq 3 ]
          then
          	clear
          	echo "                                                       Multiplication"
          	echo
          	echo
        	echo -ne "                                              Enter 1st number:"
        	read num1
        	echo
            echo -ne "                                              Enter 2nd number:"
            read num2
            result=$(($num1 * $num2))
            echo
            echo
            echo "                                            Multiplication of $num1 and $num2 is :$result"

        elif [ $Calculator_choice -eq 4 ]
          then
          	clear
          	echo "                                                       Division"
          	echo
          	echo
        	echo -ne "                                              Enter 1st number:"
        	read num1
        	echo
            echo -ne "                                              Enter 2nd number:"
            read num2
            result=$(($num1 / $num2))
            echo
            echo
            echo "                                           Division of $num1 and $num2 is :$result" 

         else
         	clear
       		echo "                                     You have pressed incorrect button"
       	fi;; # finctionality for calculator


	10);;
	11);;
    12);;
	13)clear
       break;;
     *);;

esac;

echo
echo
echo -ne "                         Please Press 13 to exit and anything to return main menu:"
read confirm

if [ $confirm -eq 13 ]
then
	clear
	break
fi
done