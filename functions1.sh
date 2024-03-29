#!/bin/bash
# Here function is validate the previous command and inform to user it is success or not
# $1 it will recieve the argument1 $2 argument2 $3 argument3
VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo " $2 .... FAILURE"
    else
    echo " $2 .... SUCCESS"
    fi
}

USERID=$(id -u)


if [ $USERID -ne 0 ]
then
echo "ERROR :: Please run this with root user"
exit 1  
fi
    yum install mysql -y 
    VALIDATE $? " mysql installation " 

    yum install java -y 
    VALIDATE $? " java installation"

    yum install git -y 
    VALIDATE $? " git installation"
    