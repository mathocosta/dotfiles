#!/bin/sh

# This script performs a ping request to the Google DNS to verify connectivity, 
# the command result is printed to an output file in the tmp directory. Can be 
# run individually or in a scheduled cron job using schedule-job.sh.

TIMESTAMP=`date +%Y-%m-%d_%H:%M:%S`
DATE=`date +%Y-%m-%d`
OUTPUT_FILE="/tmp/connection-logs-$DATE"

/sbin/ping -c5 8.8.8.8 > /dev/null

# If ping is successful, $? will return 0. If not, it will return another number. 
if [ $? -eq 0 ]; then
  echo "$TIMESTAMP | connected" >> $OUTPUT_FILE
  exit 0
else
  echo "$TIMESTAMP | disconnected" >> $OUTPUT_FILE
fi