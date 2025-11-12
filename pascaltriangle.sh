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
    echo $result
}

#Main Script
read -p "Enter number of rows: " rows
echo "pascal's triangle of $rows rows: "

for (( n=0; n<rows; n++ ))
do 
    #print spaces for alingment
    for (( space=rows; space>n; space-- ))
    do
	 echo -m " "
    done

    #print Numbers
    for (( r=0; r<=n; r++ ))
    do
        echo -n "$(nCr $n $r)   "
    done
    echo
done    
