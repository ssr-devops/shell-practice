#!/bin/bash

echo "Please enter a number:"
read UserInput

if [[ $UserInput -gt 0 && $UserInput -le 10 ]]; then
    echo "The number is between 1 and 10."
elif [[ $UserInput -gt 10 && $UserInput -le 20 ]]; then
    echo "The number is between 11 and 20."
else
    echo "The number is either less than or equal to 0, or greater than 20."
fi