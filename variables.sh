#!/bin/bash

echo "We have multiple types in variables"

echo "1. Declaring inside script:-"

P1=Sachin
P2=Rohit

echo "$P1 : Hi $P2 , Good Morning"
echo "$P2 : Hi $P1 , Good Morning"

echo "2. Executing the command inside shellscript and storing the output into a variable"

#shell script run the command inside $() and stores the output into variable called DATE.
DATE=$(date)

echo "This script is executed at timestamp: $DATE "

echo "3. Get the values of variables from command line"
#while executing just give names shell will take orderly. --> sh variables.sh sachin rohit
P1=$1
P2=$2

echo "$P1 : Hi $P2 , Good Morning"
echo "$P2 : Hi $P1 , Good Morning"
#Another ex:-
NUMBER1=$1
NUMBER2=$2
SUM=$((NUMBER1+NUMBER2))
echo "addition of 2numbers is $SUM "
#For prompting the user we use read command
#For username and passwords we use read command
echo "Enter username"
read -s USERNAME
#if we want to see in terminal we can give like:- entered username : $USERNAME
echo "Enter Password"
read -s Password

echo "4. Array" # Instead of single value it holds multiple values
PERSONS=("ramesh" "suresh" "sachin")
echo " Who is second person: ${PERSONS[1]}" # Here it follows index it starts from zero that means 0 1 2 3 like this
echo "All persons: ${PERSONS[@]}" #Here @ is all