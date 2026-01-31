#!/bin/bash

USERID=$(id -u)
LOGS_DIR="/var/log/shell-practice"
LOGS_FILE="/var/log/shell-practice/$0.log"


if [ "$USERID" -ne 0 ]; then
    echo "Please run as root"
    exit 1
fi

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "$2 failed!" | tee -a "$LOGS_FILE"
        exit 1
    else
        echo "$2 completed successfully." | tee -a "$LOGS_FILE"
    fi
}

dnf install -y nginx &>> "$LOGS_FILE"
VALIDATE $? "Nginx installation"

dnf install -y mysql-server &>> "$LOGS_FILE"
VALIDATE $? "MySQL installation"

dnf install -y nodejs &>> "$LOGS_FILE"
VALIDATE $? "Node.js installation"