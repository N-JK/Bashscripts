#!/bin/bash
#program to find the second highest number from a set of numbers

#read total count of numbers
read -p "Enter the total count of numbers: " count

#validate input
if [ $count -lt 2 ]; then
    echo "you need to enter at least 2 numbers."
    exit 1
fi
