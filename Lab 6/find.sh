#!/bin/bash

x=$(find -type f | wc -l)
echo "Files in $(pwd) =  $x "

fold=$(find -type d | wc -l )
fold=`expr $fold - 1`
echo "Folders in $(pwd) = $fold "
