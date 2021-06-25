*/5     *       *       *       *       sh /root/cache/cache-clear-script.sh  >> /root/cache/cache-clear-script.log
*/5     *       *       *       *      sh /home/apparao_it/permissions.sh
*/10    *       *       *       *       sh /var/systemstats.sh

#####################################Everyday route backup #####################################

30    22       *       *       *       sh /root/routebkp/routebkp.sh
