echo "########################################################" >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo "######## `date` ######################################" >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo '  ' >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo '  ' >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo "########################################################" >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo "######## HOSTNMAE: `hostname` ##########################" >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo "########################################################" >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo "######## Total memory  usage ###########################" >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
top -b -n 1 | grep Mem >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo '  ' >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo '  ' >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo "########################################################" >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo "######## Memory usage per process ######################" >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
ps -A --sort -rss -o pid,comm,pmem,rss | head -n 10  >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo '  ' >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo '  ' >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo "########################################################" >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo "######## Top 10 to CPU load ############################" >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10 >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo '  ' >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo '  ' >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo "########################################################" >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo "######## who is logged on and what they are doing ######" >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
w >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo '  ' >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo '  ' >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo "########################################################" >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo "########### users that are currently logged into your Unix computer system " >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
who -a >> /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt
echo "Memory Monitoring File is Saved in /root/systemstats/Linux-`hostname`-`date +%Y%m%d`-`date +%H:%M`-Memory-Monitor.txt"


