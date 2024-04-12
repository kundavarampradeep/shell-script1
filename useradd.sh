#!/bin/bash

USER="roboshop"
directory="app"

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
