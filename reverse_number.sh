#!/bin/bash
# function to reverse a number

reverse_number(){
    num=$1
    rev=0

    while [ $num-gt 0 ]
    do
        rem=$((num%10))
        rev=$((rev*10+rem))
        num=$((num/10))
}
