#!/bin/bash

	read -p "Enter a Two Numbers: " x1 x2
	echo "$x1 $x2"

    read -p "Choose operation: +,-,/,* " ch
    
    case $ch in
    	"+" )
		echo "$x1 + $x2="
    	echo "$x1 + $x2" | bc	;;
    	"-" )
		echo "$x1 - $x2="
		echo "$x1 - $x2" | bc	;;
		"*" )
   		echo "$x1 * $x2="
		echo "$x1 * $x2" | bc	;;
		"/" )
		echo "$x1 / $x2="
		echo "scale=2;$x1 / $x2" | bc	;;
		# "%" )
		#echo "$x1 % $x2="
		#echo "scale=2;$x1 % $x2" | bc	;;
    esac
