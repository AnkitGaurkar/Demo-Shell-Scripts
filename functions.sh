#!/bin/bash


#Function through User Creation

<<info 
This is an explaination of functions
info

function user_create {                         #we can write function user_create() also
	
read -p "Enter the Username:-" username

sudo useradd -m $username

echo "User Created Successfully"

}


#This is function calling, it is must to call
#user_create
#user_create
#user_create


#Fo Loop Through User Creation

<<commented
for ((i=1; i<=5; i++))
do
	read -p "Enter Username:-" username

	sudo useradd -m $username

	echo "User Create successfull"

done
commented




for ((num=1; num<=7; num++))
	do 
		echo "$num"
		user_create
	done
