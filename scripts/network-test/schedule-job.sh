#!/bin/sh

# This script schedule a cron job to execute the test.sh script every one minute.

SCRIPT_FILE="$PWD/test.sh"
ERROR_OUTPUT="/tmp/errors"

crontab -l > cron_bkp
echo "* * * * * $SCRIPT_FILE >/dev/null 2>>$ERROR_OUTPUT" >> cron_bkp
crontab cron_bkp
rm cron_bkp