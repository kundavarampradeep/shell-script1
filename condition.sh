#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo " $1 Insatallation .... FAILURE"
    else
    echo " $1 Installation .... SUCCESS"
}

if [ $USERID -ne 0 ] #thia means user id is not equal to zero
then
echo "ERROR :: Please run this with root user"
exit 1  # shell or linux will under stand it is error so it will stop till here, linux error is 1 to 127 if it is 0 it's success
# if we don't use exit commamnd linix will execute below script that is not correct way to follow rules in programming.
# else
# echo "INFO:: You are root user"
fi
    yum install mysql -y
    VALIDATE $? " mysql installation "

    yum install java -y
    VALIDATE $? " java installation"
    