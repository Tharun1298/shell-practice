#!/bin/bash


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo -e "$R run with sudo user $N"
    exit 1
fi

VALIDATE(){
    if [ $1 -eq 0 ]; then
        echo  -e " installation of $2 is $G successfull $N"
    else
        echo -e "Installation of $2 is $R unsuccssfull $N"
    fi
}


dnf list insatalled mysql
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "MySQL"
else 
    echo -e "MySQL is already installed $G skipping... $N"
fi

dnf list installed nginx
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "NGINX"
else 
    echo -e "nginx is already installed $G skipping... $N"
fi

dnf list installed python3
if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "PYTHON3"
else
    echo -e "python3 is already installed $G skipping... $N"
fi

