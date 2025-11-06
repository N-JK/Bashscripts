#!/bin/bash
#Program to find the sum of digits of a number using a function

#function to calculate sum of digits
sum_of_digits() {
    local num=$1
    local sum=0

    while [ $num -gt 0 ]
    do
        digit=$((num%10))      #extract last digit
        sum=$((sum + digit))   #add to sum
        num=$((num/10))        #Remove the last digit
