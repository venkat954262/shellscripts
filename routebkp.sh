echo "#################### ROUTE DETAILS ##########################" >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
/sbin/route -n  >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
echo "#################### df -h status##############################" >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
df -Th >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
echo "##################### fdisk -l status########################" >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
fdisk -l >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
echo "################ MEMORY free-m status ###############################" >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
free -m >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
echo "################# crontab -l status #############################" >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
crontab -l >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
echo "#################### crontab -l -uproduction status ########################" >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
crontab -l -uproduction >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
echo "#################### crontab -l -udbuser status ########################" >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
crontab -l -udbuser >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
echo "########################### /etc/init.d/ntpd status ###################" >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
/etc/init.d/ntpd status >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
echo "#################### /etc/init.d/vsftpd status ##############################" >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
/etc/init.d/vsftpd status >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
echo "############# /etc/init.d/httpd status ####################################" >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
/etc/init.d/httpd status >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
echo "#################### /etc/init.d/mysqld status ##############################" >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
/etc/init.d/mysqld status >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
echo "###################### grep -fl mysql ##################################" >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
pgrep -fl mysql >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
echo "#################### pgrep -fl wowza ####################################" >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
pgrep -fl wowza >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
echo "################### pgrep -fl java #####################################" >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
pgrep -fl java >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
echo "################### pgrep -fl Darwin #####################################" >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
pgrep -fl Darwin >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
echo "##################### pgrep -fl jboss ###################################" >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
pgrep -fl jboss>> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
echo "################## pgrep -fl tomcat ######################################" >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt
pgrep -fl tomcat >> /root/routebkp/`hostname`-`date +%Y%m%d`-`date +%H:%M`-SERVER-CURRENT-STATUS.txt


