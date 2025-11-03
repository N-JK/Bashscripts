#!/bin/bash
# Program to generate prime numbers within a given range

# Read range from user
read -p "Enter the starting number: " start
read -p "Enter the ending number: " end

echo "Prime numbers between $start and $end are:"

# Loop through all numbers in the given range
for (( num=$start; num<=$end; num++ ))
do
    # Skip numbers less than 2 (since primes start from 2)
    if [ $num -lt 2 ]; then
        continue
    fi

    # Assume number is prime
    is_prime=1

    # Check divisibility from 2 to sqrt(num)
    for (( i=2; i*i<=num; i++ ))
    do
        if (( num % i == 0 )); then
            is_prime=0
            break
        fi
    done

    # If still prime, print it
    if [ $is_prime -eq 1 ]; then
        echo "$num"
    fi
done

