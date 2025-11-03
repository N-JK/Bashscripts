#!/bin/bash
#program to find the sum of squares of individuals digits of a number

#Read number from user
read -p "Enter a number: " num

#store original number
original=$num
sum=0

#loop through digits
while [ $num -gt 0 ]
do
    digit=$(( $num % 10 ))
    square=$(( digit * digit ))
    sum=$(( sum + square ))
    num=$(( num/10 ))
done

#display result
echo "The sum of squares of digits of $original is: $sum"
