yesterday=$(date -d " 2 day ago " '+%Y.%m.%d')
scp -r /API-logs/access.log.$yesterday.gz apparao_it@10.10.9.99:/LOGSBACKUP/APILOGS/API-1-20.121/
sleep 5s
scp -r /API-logs/error.log.$yesterday.gz apparao_it@10.10.9.99:/LOGSBACKUP/APILOGS/API-1-20.121/
