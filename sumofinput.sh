#!/bin/bash

# Ask how many numbers
read -p "Enter number of elements: " n

# Create an empty array (stack)
stack=()

# Take inputs from user
for (( i=1; i<=n; i++ )); do
    read -p "Enter number $i: " val
    stack+=($val)
done

# Index for while loop
index=0

# Process each number using while loop
while [ $index -lt ${#stack[@]} ]; do
    num=${stack[$index]}
    sum=0
    temp=$num

    # Calculate sum of digits
    while [ $temp -gt 0 ]; do
        digit=$((temp % 10))
        sum=$((sum + digit))
        temp=$((temp / 10))
    done

    echo "Sum of digits of $num is $sum"

    # Move to next number
    index=$((index + 1))
done


