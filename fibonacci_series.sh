#!/bin/bash

#Program to generate Fibonacci series
read -p "Enter the number of terms" num

a=0
b=1

echo "Fibanocci series upto $num terms: "

for (( i=0; i<=num; i++ ))
do
    echo -num "$a "
    fn=$((a+b))
    a=$b
    b=$fn
d
