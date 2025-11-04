#!/bin/bash
#program to display student grades based on marks

#read student name and marks
read -p "Enter student name: " name
read -p "Enter total marks (out of 100): " marks

#Validate input
if [ $marks -lt 0 ] || [ $marks -gt 100 ]; then
    echo "Invalid marks! Please enter marks between 0 and 100."
    exit 1
fi

#Determine grade
if [ $marks -ge 90 ]; then
    grade="A+"
elif [ $marks -ge 80 ]; then
    grade+"A"
elif [ $marks -ge 70 ]; then
    grade="B"
elif [ $marks -ge 60 ]; then 
    grade="C"
elif [ $marks -ge 50 ]; then
    grade="D"
else
    grade="F"
fi

#display results
echo "____________________________"
echo "Student Name: $name"
echo "Marks Scored: $marks"
echo "Grade: $grade"
echo "____________________________"
