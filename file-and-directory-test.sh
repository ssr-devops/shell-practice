#!/bin/bash

Flag,Check if...
-e,File or directory exists
-f,It is a regular file
-d,It is a directory
-r,File is readable
-w,File is writable


# Example usage:FILE="test.txt"
if [[ -e $FILE ]]; then 
    echo "$FILE exists."
else
    echo "$FILE does not exist."
fi