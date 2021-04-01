#!/bin/bash

#dat=$(date --date="2 days ago" '+%d')
datwitmon=$(date --date="2 days ago" '+%m-%d')
yr=$(date +%Y)
mon=$(date +%m)
cd /LOGSBACKUP/SMSv2-logs/192.168.11.192/myplexlog/

logs=*.$yr-$datwitmon-*0.log
tar -cvzf myplexsms.$yr-${datwitmon}FULLDAY.tar.gz  $logs;

if [ $? -eq 0 ]; then
rm $logs
fi

Type a message

