#!/bin/bash

USERID=$(id -u)
LOGS_DIR="/var/log/shell-practice"
LOGS_FILE="/var/log/shell-practice/$0.log"

if [ "$USERID" -ne 0 ]; then
    echo "Please run as root" | tee -a "$LOGS_FILE"
    exit 1
fi

mkdir -p "$LOGS_DIR"

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "$2 failed!" | tee -a "$LOGS_FILE"
        exit 1
    else
        echo "$2 completed successfully." | tee -a "$LOGS_FILE"
    fi
}

for pkg in $@ # sudo <file name> nginx mysql nodejs
do
    dnf list installed "pkg" &>>$LOGS_FILE
    if [ $? -eq 0 ]; then
        echo "$pkg is already installed." | tee -a "$LOGS_FILE"
        dnf install -y "$pkg" &>> "$LOGS_FILE"
        VALIDATE $? "$pkg installation"
    else
        echo "$pkg is not installed. Skipping installation." | tee -a "$LOGS_FILE"
    fi
done