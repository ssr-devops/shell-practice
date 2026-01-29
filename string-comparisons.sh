#!/bin/bash

NAME=""

#== : Equals
if [[ $NAME == "Surendar" ]]; then
    echo "Hello, Surendar!"
else
    echo "Hello, stranger!"
fi

#!= : Not Equals
if [[ $NAME != "Surendar" ]]; then
    echo "Access denied."
else
    echo "Welcome, Surendar!"
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