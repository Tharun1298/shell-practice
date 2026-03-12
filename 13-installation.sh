#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]; then

    echo "run with sudo user"
    exit 1

fi

VALIDATE(){

    if [ $1 -eq 0 ]; then

        echo " installation of $2 is successfull"

    else

        echo "Installation of $2 is unsuccssfull"

    fi

}


dnf install mysql -y

VALIDATE $? "MySQL"


dnf install nginx -y

VALIDATE $? "NGINX"

dnf install python3 -y

VALIDATE $? "PYTHON3"


