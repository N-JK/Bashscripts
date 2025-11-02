#!/bin/bash
#program to check if a given number is an armstrong number

#read the num
read -p "Enter the number:" num

#store the original number
sum=0


#count number of digits
n=${#num}

#use a temperory variable to perform calculation
temp=$num

#calculate the sum of each digit raised to the power of n
while [ $temp -gt 0 ]
do
    digit=$((temp % 10))
    sum=$((sum + digit**n))
    temp=$((temp/10))
done

#check if Armstrong number 
if [ "$sum" -eq "$num" ];then
    echo "$num is an Armstrong number."
else
    echo "$num is not an Armstrong number."
fi
