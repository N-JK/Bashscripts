#!/bin/bash
#Program to find the sum of all numbers between 50 and 100
#That are divisible by 3 and not divisible by 5

sum=0

#Loop through numbers from 50 to 100
for (( num=50; num<=100; num++ ))
do
    if (( num % 3 == 0 && num % 5 != 0 )); then
        sum=$((sum + num))
    fi
done

#Display the result

