#!/bin/bash
home="/home/jackyu"
if [ ! -d "$home/ping" ]
then
    mkdir $home/ping
    cd $home/ping
else
    cd $home/ping
fi
time=`date "+%Y-%m-%d"`
start=`date "+%Y-%m-%d-%H:%M:%S"`
echo "\r\n\r\nPING Start at $start" >> $time.log
/bin/ping -c 10 vps01.whimtech.cn >> $time.log 2>&1
end=`date "+%Y-%m-%d-%H:%M:%S"`
echo "PING End at $end" >> $time.log
