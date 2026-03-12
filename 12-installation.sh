#!/bin/bash

USERID=$(id -u)


if [ $USERID -ne 0 ]; then

    echo "ERROR: Please run with user who are having root privileges"
    exit 1

fi

dnf install mysql -y

if [ $? eq 0 ]; then

    echo "Installation is successfull"
    exit 1
else 

    echo "Installation is unsusccesfull"

fi