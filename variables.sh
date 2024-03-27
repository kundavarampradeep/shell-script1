#!/bin/bash



echo "We have multiple types in variables"

echo "1. Declaring in side script:-"

P1=Sachin
P2=Rohit

echo "$P1 : Hi $P2 , Good Morning"
echo "$P2 : Hi $P1 , Good Morning"

#shell script run the command inside $() and stores the output into variable called DATE.
DATE=$(date)

echo "This script is executed at timestamp: $DATE
