#!/bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
Y="\e[33m"
N="\e[0m"

VALIDATE=(){
    if [ $1 -ne 0 ]
    then
    echo -e " $2... $R FAILURE $N "
    else
    echo -e " $2... $Y SUCCESS $N "
    fi
}
 
 USERID=$(id -u)
 
 if [ $USERID -ne 0 ]
 then
 echo " ERROR :: Please run this with root user "
 exit1
 fi

 for i in $@
do
yum install $i -y &>>$LOGFILE
done