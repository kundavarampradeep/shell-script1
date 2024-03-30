#!/bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
USERID=$(id -u)
R="\e[31m"
Y="\e[33m"
N="\e[0m"

VALIDATE=(){
    if [ $1 -ne 0 ]
    then
    echo -e " $2... $R FAILURE $N "
    exit1
    else
    echo -e " $2... $Y SUCCESS $N "
    fi
}
 

 
 if [ $USERID -ne 0 ]
 then
 echo -e " ERROR :: Please run this with root user $N "
 exit1
 fi

 for i in $@
do
 yum install $i &>>$LOGFILE
 if [ $?-ne 0 ]
 then
 echo " $i is not installed let's install it "
 yum install $i -y &>>$LOGFILE
 VALIDATE $? "$i"
 else
 echo -e " $Y $i is already installed $N "
 fi
done