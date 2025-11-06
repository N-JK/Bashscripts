#!/bin/bash
#program to find the second highest number from a set of numbers

#read total count of numbers
read -p "Enter the total count of numbers: " count

#validate input
if [ $count -lt 2 ]; then
    echo "you need to enter at least 2 numbers."
    exit 1
fi

#Read first number
read -p "Enter number 1: " num
highest=$num
second_highest=$num

#Loop to read remaining numbers
for (( i=2; i<=count; i++ ))
do
    read -p "Enter number $i: " num

    if [ $num -gt highest ]; then
        second_highest=$highest
        highest=$num
    
