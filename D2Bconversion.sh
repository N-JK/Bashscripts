#!/bin/bash


#program to convert decimal to binary

read -p "Enter a decimal number: " num

binary = ""

n=$num

if [ $n -eq 0 ]; then
    binary=0

