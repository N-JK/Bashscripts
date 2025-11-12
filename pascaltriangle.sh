#!/bin/bash

#function to calculate factorial
factorial() {
    num=$1
    fact=1
    for(( i=1;i<=num;i++ ))
    do
        fact=$((fact * i))
    done
    echo $fact
}

#function to calculate ncr(combination)
nCr() {
    n=$1
    r=$2
    num=$(factorial $n)
    den1=$(factorial $r)
    den2=$(factorial $((n-r)))
    result=$((num / (den1 * den2)))
}
