#!/bin/bash

read -p "Enter a nmber: " num

if [[ $num -gt 0 ]]; then
    echo "That's a big number!"
    elif [[ $num -lt 0 ]]; then
    echo "That's a small number!"
    else
    echo "You entered zero!"
fi