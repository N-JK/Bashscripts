#!/bin/bash
#Author: Nibin John
#Odd or Even
echo "Enter a Number: "
read number

if [ $((number % 2 )) -eq 0 ]; then
    echo "$number is even"
else
    echo "$number is odd"
fi