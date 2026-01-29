#!/bin/bash

read -p "Enter a nmber: " num

if [[ $num -gt 10 ]]; then
    echo "That's a big number!"
    else
    echo "That's a small number!"
fi