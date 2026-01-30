#!/bin/bash

USERID=$(id -u)

if [ "$USERID" -ne 0 ]; then
    echo "Please run as root"
    exit 1
fi

VALIDATE() {
    if [ $? -ne 0 ]; then
        echo "$1 failed!"
        exit 1
    else
        echo "$1 completed successfully."
    fi
}


INSTALL_NGINX() {
    echo "Installing Nginx web server..."
    dnf install -y nginx
    VALIDATE "Nginx installation"
}