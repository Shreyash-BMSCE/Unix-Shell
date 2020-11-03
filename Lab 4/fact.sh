#!/bin/bash
#factorial using while loop

read -p "Enter a number:" x
count=0
temp=1

while [ $count -lt $x ];do
	count=$(echo "$count + 1" | bc)
	temp=$(($temp*$count))   #  or do this (echo "$temp*$count" | bc)
done

echo "Factorial: "$temp""
	
