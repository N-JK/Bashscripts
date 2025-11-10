#!/bin/bash
#author:Nibin

#program to find the sum of odd and even numbers from a set of numbers

#initilaize sums
sum_even=0
sum_odd=0

#read num from usr
read -p "Enter numbers separated by space: " -a numbers

#loop through each number
for num in "${numbers[@]}"
do
    if (( num % 2 == 0 ))
    then
	sum_even=$((sum_even+num))
    else
        sum_odd=$((sum_odd+num))
    fi
done

#results
echo "Sum of even numbers: $sum_even"
echo "Sum of odd numbers: $sum_odd"
