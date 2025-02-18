#!/bin/bash

<<help

loops : anything that you want to repeat again and again based on a conditions

for loop conditions
1..10

start point = 1
end point = 10
increment / decrement = +/-

5..1

help

for (( num = 1 ; num<=10 ; num++ ))
do 
	echo "$num"
	echo "hello"
done
