#!/bin/bash

NAME="Reddy"

#== : Equals
if [[ $NAME == "Reddy" ]]; then
    echo "Hello, Reddy!"
else
    echo "Hello, stranger!"
fi

#!= : Not Equals
if [[ $NAME != "Reddy" ]]; then
    echo "Access denied."
else
    echo "Welcome, Reddy!"
fi

#-z : String is empty (zero length)
if [[ $NAME < "Z" ]]; then
    echo "$NAME comes before Z in the alphabet."
else
    echo "$NAME comes after Z in the alphabet."
fi

#-n : String is not empty (non-zero length)
if [[ -n $NAME ]]; then
    echo "The name variable is not empty."
else
    echo "The name variable is empty."
fi