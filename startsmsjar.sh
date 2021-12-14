start-apache.sh

/etc/init.d/apache2 status
#echo "apache is running"
if [ $? -ne 0 ]
then 
 echo "apache2 is not running--starting the service please wait"
 /etc/ini.d/apache2 restart
 echo "apache restarted"
fi
==========================================================
start-tomcat.sh

TOMCAT_HOME=/opt/apache-tomcat-7.0.73/
mongo_pid=$(ps aux | grep mongod | grep -v grep | awk '{ print $2 }')
tomcat_pid=$(ps aux | grep apache-tomcat-7.0.73 | grep -v grep | awk '{ print $2 }')

if [ -n "$mongo_pid" ]
then
 echo "Mongo is already runing (pid: $mongo_pid)"
else
  echo "Starting mongod"
  /usr/bin/mongod -f /etc/mongod.conf
fi

sleep 20s

if [ -n "$tomcat_pid" ]
then
 echo "Tomcat is already running (pid: $tomcat_pid)"
else
 echo "Starting tomcat"
 sh $TOMCAT_HOME/bin/startup.sh
fi

=======================================================
start-nginx.sh

systemctl status nginx.service
 
if [ $? -ne 0 ]
then 
 echo "starting nginx"
 systemctl restart nginx.service
fi
=======================================






start-httpd.sh

service httpd status

if [ $? -ne 0 ]
then 
 echo "starting nginx"
 service httpd restart
fi
====================================
sms-billing-start.sh

SMS_HOME=/DATA/sms
BILL_HOME=/DATA/billing

smsjar=`ls -t $SMS_HOME/*.jar | head -1 | cut -c 11-`

#billjar=`ls -t $BILL_HOME/*.jar | head -1 | cut -c 15-`

billjar=`ls -t /DATA/billing/*.jar | head -1 | cut -c 15-`

#sms_pid=`ps aux | grep $smsjar | grep -v grep | awk 'NR==1{print $2}'`
#bill_pid=`ps aux | grep $billjar |  grep -v grep | awk 'NR==1{print $2}'`

sms_pid=`pgrep -f $smsjar`
#Sms jar checking for Pid if not it will start latest jar

if [ $? -eq 0 ]
then 
  echo "SMS jar is already running (latest-jar: $smsjar, pid: $sms_pid) "
else
 echo "Starting sms_jar"
   cd  $SMS_HOME
   #latest_smsjar=`ls -t *.jar | head -1`
   nohup java -jar -Dspring.config.location=application-dev.yml $smsjar &   
echo "SMS jar started and the latest jar is $smsjar"
fi

#Billing jar checking for Pid if not it will start latest jar

bill_pid=`pgrep -f $billjar`
if [ $? -eq 0 ]
then 
  echo "bill jar is already running (latest-jar: $billjar, pid: $bill_pid)"
else
 echo "Starting billing_jar"
   cd  $BILL_HOME
   #latest_billjar=`ls -t *.jar | head -1`
   nohup java -jar -Dspring.config.location=application.yml $billjar &   
   echo "Billing jar started and the latest jar is $billjar" 
fi
