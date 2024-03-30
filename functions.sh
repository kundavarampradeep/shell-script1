#!/bin/bash

#Here because of date and script name and logfile total data will not appear only installatoin status appear
#because of &>>$logfile
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"  #Here these are defined colors so we called in failure and success.
N="\e[0m"

# Here function is validate the previous command and inform to user it is success or not
# $1 it will recieve the argument1 $2 argument2 $3 argument3
VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo -e " $2 ....$R FAILURE $N "
    else
    echo -e " $2 .... $G SUCCESS $N "
    fi
}

USERID=$(id -u)


if [ $USERID -ne 0 ]
then
echo "ERROR :: Please run this with root user"
exit 1  
fi
    yum install mysql -y  &>>$LOGFILE
    VALIDATE $? " mysql installation " 

    yum install java -y  &>>$LOGFILE
    VALIDATE $? " java installation"

    yum install git -y  &>>$LOGFILE
    VALIDATE $? " git installation"
    