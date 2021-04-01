yesterday=$(date -d " 2 day ago " '+%Y.%m.%d')
 chmod 655 /API-logs/access.log.$yesterday.gz
 chmod 655 /API-logs/error.log.$yesterday.gz

