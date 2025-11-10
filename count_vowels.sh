#!/bin/bash
#program to count the number of vowels in a line of text.

#read a line of text from the user
read -p "Enter a line of text: " line

#convert to lowercase if necessary
line=$(echo "$line" | tr 'A-Z' 'a-z')

#initialize vowel count
count=0

#loop through each character in the string
for (( i=0; i<${#line}; i++))
do
    ch=${line:$i:1}
    case $ch in
        a|e|i|o|u)
            count=$((count + 1))
            ;;
    esac
done

#Display the result
echo "Number of vowels in the given line: $count"

