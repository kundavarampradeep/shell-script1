
APP_LOG_DIR=/home/centos/app-logs  #created logs stored here
DATE=$(date +%F:%H:%M:%S)
LOGSDIR=/home/centos/shellscript-logs   # deleted logs will store here
SCRIPT_NAME=$0
LOGFILE=$LOGSDIR/$SCRIPT_NAME-$DATE.log

FILES_TO_DELETE=$(find $APP_LOG_DIR -name "*.log" -type f -mtime +13)

echo " script started executing at $DATE " &>>$LOGFILE

while read line
do
echo "Deleting $line" &>>$LOGFILE
rm -rf $line
done <<< $FILES_TO_DELETE