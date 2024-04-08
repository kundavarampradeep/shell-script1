
APP_LOG_DIR=/home/centos/app-logs
DATE=$(date +%F:%H:%M:%S)
LOGSDIR=/home/centos/shellscript-logs
SCRIPT_NAME=$0
LOGFILE=$LOGSDIR/$0-$DATE.log

FILES_TO_DELETE=$(find $APP_LOG_DIR -name "*.log" -type f -mtime +13)

echo " script started executing at $DATE "

while read line
do
echo "Deleting $line" &>> $LOGFILE
rm -rf $line
done <<< $FILES_TO_DELETE