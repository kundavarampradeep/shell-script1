#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ] #thia means user id is not equal to zero
then
echo "ERROR :: Please run this with root user"
 echo "mysql successfully downloaded"
#exit 1  # shell or linux will under stand it is error so it will stop till here, linux error is 1 to 127 if it is 0 it's success
# else
# echo "INFO:: You are root user"
fi
    yum install mysql -y

    #here the out put is only error, because of exit below script won't execute.

    if [ $USERID -ne 0 ]
    then
    echo "ERROR :: Please run this script with root user"
    echo "java successfully downloaded"
    fi
    yum install java -y
    