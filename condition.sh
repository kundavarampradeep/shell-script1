#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "ERROR :: Please run this with root user"
fi
    yum install mysql -y