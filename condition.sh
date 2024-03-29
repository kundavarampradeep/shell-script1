#!/bin/bash

$USERID=$(id -u)

if [ $USERID -ne 1000 ]
then
echo "ERROR :: Please run this with root user"
fi
    yum install mysql -y