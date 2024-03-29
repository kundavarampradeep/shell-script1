#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ] #thia means user id is not equal to zero
then
echo "ERROR :: Please run this with root user"
#exit 1  # shell or linux will under stand it is error so it will stop till here, linux error is 1 to 127 if it is 0 it's success
# else
# echo "INFO:: You are root user"
fi
    yum install mysql -y
if [ $? -ne 0 ]    
then
echo " mysql installation failed"
else
echo "mysql installation is successfull"
fi
    #here the out put is only error, because of exit below script won't execute.

  
    yum install java -y
    if [ $? -ne 0 ]    
then
echo " java installation failed"
else
echo "java installation is successfull"
fi
