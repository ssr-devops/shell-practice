#!/bin/bash

echo "Please enter the Username:"
read USERNAME
echo "Please enter the Password:"
read -s PASSWORD

echo "Logging in with Username: $USERNAME"
# Note: For security reasons, we do not display the password
echo "Password entered successfully."