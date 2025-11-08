#!/bin/bash

#check if exactly two arguments are provided

if [ $# -ne 2 ]; then
    echo "Usage: $0 <file1> <file2>"
