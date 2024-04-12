#!/bin/bash

USER="roboshop"

if id -u "$USER" &>/dev/null; 
then
    echo 'user already exists'
else
    sudo useradd "$USER"
    echo "User $USER added successfully."
fi