#!/bin/bash
#Nibin John

#program to check if a given string is a palindrome
read -p "Enter a string: " str

#Reverse the string
rev_str=$(echo "$str" | rev)

#compare original and reversed string
if [ "$str" = "$rev_str" ]
then
    echo "The string '$str' is a palindrome."
else
    echo "The string '$str' is not a palindrome."
fi
