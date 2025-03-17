#!/bin/bash

<<help 

this is a shell 
script to create a user 

help

#creating user

function create_user {
echo "============== creation of user started ============="

read -p "enter the username:" $username

read -p "enter the password:" $password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "========== creation of user completed ==========="

}

#user deletion

function del_user {

sudo userdel $username

}

#checking user exist
function check_user {

if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];

then 
	
	echo " as wc is 0 the user is deleted"
else
	echo "the user was not deleted"

fi
}

create_user
create_user
del_user
check_user

