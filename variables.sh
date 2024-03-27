#!/bin/bash

echo "We have multiple types in variables"

echo "1. Declaring in side script:-"

P1=Sachin
P2=Rohit

echo "$P1 : Hi $P2 , Good Morning"
echo "$P2 : Hi $P1 , Good Morning"

echo "2. Executing the command inside shellscript and storing the output into a variable"

#shell script run the command inside $() and stores the output into variable called DATE.
DATE=$(date)

echo "This script is executed at timestamp: $DATE "

echo "3. Get the values of variables from command line"
#while executing just give names shell will take orderly.
P1=$1
P2=$2

echo "$P1 : Hi $P2 , Good Morning"
echo "$P2 : Hi $P1 , Good Morning"