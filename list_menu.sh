#!/bin/bash

while true
do
    echo ""
    echo "*****Menu*****"
    echo "1. List current working directory"
    echo "2. print working directory"
    echo "3. Display Date"
    echo "4. Display user logged in"
    echo "5. Exit"
    echo "**************"
    echo -n  "Enter your choice: "
    read choice

    case $choice in
        1)
	    echo "Listing current directory:"
