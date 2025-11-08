#!/bin/bash

#check if exactly two arguments are provided

if [ $# -ne 2 ]; then
    echo "Usage: $0 <file1> <file2>"
    exit 1
fi

file1=$1
file2=$2

#check if both files exist
if [! -f "$file1" ] || [ ! -f "$file2" ]; then
    echo "Error: one or both files do not exist."
    exit 1
fi

#compare the files

if cmp -s "$file1" "$file2"; then
    echo "Both files have the same content."
    rm "$file2"
    echo "File 'file2' has been deleted."
