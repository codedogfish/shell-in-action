# shell-in-action
Practice on Shell

## ping.sh
Log ping for vps01
Set crontab 
> */1 * * * * sleep 15;. /home/jackyu/.ping.sh
> */1 * * * * sleep 45;. /home/jackyu/.ping.sh

## unlimited.sh
Resolove the problem "too many open files" when debug program on MacOSX
Set alias fklimit = ". ~/unlimited.sh" 
