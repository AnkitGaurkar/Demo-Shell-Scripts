#!/bin/bash

read -p "Enter UserName:" username
read -p "ENter the password:" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"


echo "===================================Creation of User Completed==========================="

sudo userdel $username


echo "====================== Delation of user Completed======================="

if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];   # we can also use -eq (equal to) insted of ==
then

echo "as wc is 0 the user is deleted"

else 
	echo "the user was not deleted"

fi


