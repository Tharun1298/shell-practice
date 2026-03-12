#!/bin/bash

USERID=$(id -u)


if [ $USERID -ne 0 ]; then

    echo "ERROR: Please run with user who are having root privileges"

