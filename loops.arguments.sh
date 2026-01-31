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

for pkg in $@ # sudo <file name> nginx mysql-server nodejs
do
    dnf uninstall -y "$pkg" &>> "$LOGS_FILE"
    VALIDATE $? "$pkg uninstallation"
done