#!/bin/bash

<<info 

this is a function explaination 

info

function create-user {

read -p "enter the username: " username

sudo useradd -m $username  

echo "user created successfully"

}

for (( i = 1 ; i <= 5 ; i++ ))
do
	create-user
done
#calling function

#create-user
#create-user
#create-user
