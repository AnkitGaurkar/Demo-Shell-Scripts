#!/bin/bash





<<info
This shell script checks if user exits

info


read -p "Enter the username you wish to check:-"   username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

echo $count 


if [ $count == 0 ];
then
	echo "user does not exits"

else
	echo "user exits"
fi
