TOMCAT_HOME=/opt/apache-tomcat-7.0.65/
mongo_pid=$(ps aux | grep mongod | grep -v grep | awk '{ print $2 }')
tomcat_pid=$(ps aux | grep apache-tomcat-7.0.65 | grep -v grep | awk '{ print $2 }')

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
=============================

#in crontab place the script as
#@reboot sh StartServicesAfterServerReboot.sh >>/var/logs/startservicelog.txt

