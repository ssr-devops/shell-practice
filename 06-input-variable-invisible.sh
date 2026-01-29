#!/bin/bash

echo "Please enter the Username:"
read USERNAME
echo "Please enter the Password:"
read -s PASSWORD

echo "Logging in with Username: $USERNAME"
echo "Logging in with Password: $PASSWORD"
# Note: For security reasons, we do not display the password
echo "Password entered successfully."


sleep 5
echo "The name of the script is : $0"
echo "The first parameter is : $1"
echo "The second parameter is : $2"
echo "The total number of parameters passed is : $#"
echo "All the parameters passed are : $*"
echo "The process ID of the current script is : $$"
echo "The last executed command's exit status is : $?"