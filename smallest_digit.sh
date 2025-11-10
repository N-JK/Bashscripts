#!//bin/bash
#Program to find the smallest digit from a given number

#Read number from user
read -p "Enter a number: " num

#store the original number
original=$num

#initialize smallest with the last digit
smallest=$((num%10))
num=$((num/10))

#Loop through each remaining digit
while [ $num -gt 0 ]
do
    digit=$((num%10))
    if [ $digit -lt $smallest ]; then
        smallest=$digit
    fi
    num=$((num/10))
done

#Display result
echo "The smallest digit in $original is: $smallest"
