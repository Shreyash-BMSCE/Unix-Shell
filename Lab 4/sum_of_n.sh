#!/bin/bash

read -p "Enter N limit: " x 

count=0
even_sum=0
while [ $count -le $x ];do
	if [ `echo "$count % 2"|bc` -eq 0 ];then
		even_sum=$(echo "$even_sum+$count" | bc)
		
	fi
	

	count=$(echo "$count + 1"| bc)
done

echo "sum = $even_sum"
