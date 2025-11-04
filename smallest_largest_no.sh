#!/bin/bash
#Program to find the smallest and largest numbers from a set of numbers

#Read numbers from user
read -p "Enter the total count of numbers: " count

#Validate input
if [ $count -le 0 ]; then
    echo "Please enter a valid positive number for count."
    exit 1
fi

#read the first number to initialize smallest and largest
read -p "Enter number 1: " num
smallest=$num
largest=$num

#Loop through remaining numbers
for (( i=2; i<=count; i++ ))
do
    read -p "Enter number $i: " num
    
    #compare for smallest and largest
    if [ $num -lt $smallest ]; then
        smallest=$num
    fi

    if [ $num -gt $largest ]; then
        largest=$num
    fi
done

#display results
echo "_________________________"
echo "Smallest number: $smallest"
echo "Largest number: $largest"
echo "_________________________"
