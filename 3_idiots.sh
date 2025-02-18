#!/bin/bash

#user defined variables
hero="rancho"
villain="virus"

echo "3 idiots ka hero hai $hero"

echo "3 idiots ka villain hai $villain"


#shell / environment variales

echo "current logged in user $USER"

#user input	
read -p "rancho ka poora nam kya tha ? " fullname

echo "rancho ka poora nam $fullname tha"

#arguments


# ./3_idiots.sh raju farhan rancho

echo "movie ka naam: $0"

echo "first idiot : $1"

echo "second idiot : $2"

echo "third idiot : $3"

echo " total no. of idiots / arguments : $#"

echo "hence, the three idoiots are : $@"
