#!/bin/bash
read -p " Enter the no of terms: " N 
  
a=0 
b=1  
i=0   
echo "The Fibonacci series is : "
   
while [ $i -lt $N ]; 
do
    echo -n "$a "
    c=$((a + b)) 
    a=$b 
    b=$c 
    i=$(echo "$i+1"|bc)
done

