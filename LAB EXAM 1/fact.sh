#!/bin/bash

read -p "Enter number:" x
count=0
tmp=1

while [ $count -lt $x ];do
	count=$(echo "$count + 1" | bc)
	tmp=$(($tmp*$count))   
done

echo "The Factorial is: "$tmp""
