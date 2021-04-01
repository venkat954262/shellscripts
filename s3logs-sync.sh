#!/bin/bash

===========pastmonth======
pastmondigit=$(date -d "-1 month" +%m)
pastmon=$(date -d "-1 month" +%B)
#ex: result March

#pastmon=$(date -d "-1 month" +%b)
#ex: result Mar
=========================
mondigit=$(date +%m)
echo "this month is $mondigit"

yr=$(date +%Y)
echo "this year is $yr"

Mon=$(date +%B)
echo "this month name is $Mon"

Bucketpath=s3://backupserver-logs/EVENTLOGS
apifolder=CAR_API-01-23.205


cd /LOGSBACKUP/APILOGS/EVENT_LOGS/CAR_API-01-23.205/

s3cmd sync --include "*.log.$yr.$pastmondigit.*" --exclude "*" . $Bucketpath/$apifolder/$pastmon$yr/

#s3cmd sync --include "*.log.$yr.$pastmondigit.*" --exclude "*" . $Bucketpath/$apifolder/${pastmon^}$yr/
#Ex:                                                                                       March2021 
#s3cmd sync --include "*.log.$yr.$pastmondigit.*" --exclude "*" . $Bucketpath/$apifolder/${pastmon^^}$yr/
#Ex:                                                                                       MARCH2021    

s3cmd sync --include "*.log.$yr.$mondigit.*" --exclude "*" . $Bucketpath/$apifolder/$Mon$yr/

echo "$apifolder sync completed"


