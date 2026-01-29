#!/bin/bash

USERID=$(id -u)

if [ "$USERID" -ne 0 ]; then
    echo "Please run as root"
    exit 1
fi

echo "Installing Nginx web server..."
dnf install -y nginx

if [ $? -ne 0 ]; then
    echo "Nginx installation failed!"
    exit 1
else
    echo "Nginx installed successfully."
fi