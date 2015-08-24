#!/bin/bash
if [ ! -d "/Users/jackyu/ping" ]
then
    mkdir /Users/jackyu/ping
    cd /Users/jackyu/ping
else
    cd /Users/jackyu/ping
fi
time=`date "+%Y-%m-%d"`
start=`date "+%Y-%m-%d-%H:%M:%S"`
echo "\r\n\r\nPING Start at $start" >> $time.log
/sbin/ping -c 10 vps01.whimtech.cn >> $time.log 2>&1
end=`date "+%Y-%m-%d-%H:%M:%S"`
echo "PING End at $end" >> $time.log
