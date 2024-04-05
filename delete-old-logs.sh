
APP_LOG_DIR=/tmp/
DATE=$(date +%F)
LOGSDIR=/tmp/shell-script1-logs
SCRIPT_NAME=$0
LOGFILE=$LOGSDIR/$0-$DATE.log

FILES_TO_DELETE=$(find $APP_LOG_DIR -name "*.log" -type f -mtime +14)

echo "$FILES_TO_DELETE deleted"