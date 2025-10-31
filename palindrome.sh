#!/bin/bash
#Nibin John
#program to check a number is palindrome

# Read number from user
read -p "Enter a number: " num

# Store original number
original=$num
reverse=0

# Reverse the number
while [ $num -gt 0 ]
do
    rem=$((num % 10))
    reverse=$((reverse * 10 + rem))
    num=$((num / 10))
done

# Check if original and reverse are the same
if [ $original -eq $reverse ]
then
    echo "The number $original is a palindrome."
else
    echo "The number $original is not a palindrome."
fi
