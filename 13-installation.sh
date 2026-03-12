#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0]; then

    echo "run with sudo user"

    exit 1

fi

dnf install mysql -y

if [ $? -eq 0 ]; then

    echo " installation of MySQL is successfull"

else

    echo "Installation of MySQL is unsuccssfull"

fi

