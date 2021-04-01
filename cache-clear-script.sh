#### a is the total value
a=$(free -m | awk '{print $2}' |head -2|tail -1)
echo "Total Memory = $a"
#### b is Mem used value
b=$(free -m | awk '{print $3}' |head -2|tail -1)
echo "Used Memory = $b"
sync; echo 3 > /proc/sys/vm/drop_caches
d=$a
e=$b
c=$(echo "$e*100/$d" | bc)
echo "Total used Memory in percentage  = $c % "


if [ "$c" -gt 60 ]

then

echo "Memory threshold value exceeded  clearing the cache memory "
########## RUNNING THE MEMORY SCRIPT
#sh /var/mem-monitor.sh
sync; echo 3 > /proc/sys/vm/drop_caches
sleep 2
a=$(free -m | awk '{print $2}' |head -2|tail -1)
b=$(free -m | awk '{print $3}' |head -2|tail -1)
d=$a
e=$b
c=$(echo "$e*100/$d" | bc)
echo "Cache cleared. present System memory utilization  is $c %"
else
echo "Memory threshold value has not reached. $(date)"
fi


