#!/bin/bash

VAR=$1
VAR=$2

echo " script name :- $0 "  #it gives sccript name

echo " First variable is $VAR1 "  #while executing if you give 20 and 21 it will give only 20
 echo " Second variable is $VAR2 "  #it will give 21

 echo " all variables $@ " #if you give numbers it will give 20 and 21
 echo " number of variables $# " #it gives how many numbers it has