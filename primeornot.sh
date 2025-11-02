#!/bin/bash
#Program to check a number is prime or not

#read the number
read -p "Enter the number: " num

#handle catches
if [ $num -le 1 ]; then
    echo "$num is not a prime number."
    exit 0
fi

#initialize flag
is_prime=1

#check the number
for ((i=2; i*i<=num; i++));
do
    if (( num % i == 0 )); then
	is_prime=0
	break
    fi
done

#Display result
if [ $is_prime -eq 1 ]; then
    echo "$num is a prime number."
else 
    echo "$num is not a prime number."
fi
