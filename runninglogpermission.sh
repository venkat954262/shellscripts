 chmod 655 /API-logs/access.log
 chmod 655 /API-logs/error.log

crontab -e
===========
30     3       *       *       *       sh /home/apparao_it/permission.sh
00      7       *       *       *       sh /home/apparao_it/runninglogpermission.sh
31    3       *       *       *       sh /home/apparao_it/Logsbkp.sh
