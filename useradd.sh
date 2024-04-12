#!/bin/bash

USER="roboshop"
directory="app"

if [ $USERID -ne 0 ];
then
    echo -e "$R ERROR:: Please run this script with root access $N"
    exit 1
fi

if id -u "$USER" &>/dev/null; 
then
    echo 'user already exists'
else
    sudo useradd "$USER"
    echo "User $USER added successfully."
fi

if [ ! -d "$directory" ]; 
then
    mkdir "$directory"  &>>$LOGFILE
    echo "Directory created."
else
    echo "Directory already exists."
fi
