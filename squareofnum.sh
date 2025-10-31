    #!/bin/bash

# Ask how many numbers
read -p "Enter number of elements: " n

# Create an empty array (stack)
stack=()

# Take inputs from user
for (( i=1; i<=n; i++ )); do
    read -p "Enter number $i: " val
    stack+=($val)
done

# Calculate and display squares
for num in "${stack[@]}"; do
    square=$((num * num))
    echo "The square of $num is $square"
done

