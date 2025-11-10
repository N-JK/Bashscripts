#!/bin/bash

#Script to check exwcutable permission for all files in the current directory

for file in *; do
    if [ -f "$file" ]; then
        if [ ! -x  "$file" ]; then
	    	
