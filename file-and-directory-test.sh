#!/bin/bash




# Example usage:FILE="test.txt"
if [[ -e $FILE ]]; then 
    echo "$FILE exists."
else
    echo "$FILE does not exist."
fi