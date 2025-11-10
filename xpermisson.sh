#!/bin/bash

#Script to check exwcutable permission for all files in the current directory

for file in *; do
    if [ -f "$file" ]; then
        if [ ! -x  "$file" ]; then
	    echo "Adding execute permission to: $file"
       	    chmod +x "$file"
	else
	    echo "$file already has execute permission."
	fi
    fi
