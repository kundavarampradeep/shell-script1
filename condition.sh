#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo " $3 .... FAILURE"
    else
    echo " $3 .... SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
echo "ERROR :: Please run this with root user"
exit 1  
fi
    yum install mysql -y
    VALIDATE $? " mysql installation "

    yum install java -y
    VALIDATE $? " java installation"
    