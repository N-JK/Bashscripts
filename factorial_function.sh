#!/bin/bash

#program to find factorial using function

read -p "enter a number: " num

fact = 1

for ((i=1; i<=num; i++))
do
    fact=$((fact * i))
done

echo "Factorial of $num is: $fact"
