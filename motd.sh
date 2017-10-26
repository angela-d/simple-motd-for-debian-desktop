#!/bin/sh

LOLCAT=/usr/games/lolcat #whereis lolcat
BANNER=$(hostname) #custom name

[ -r /etc/lsb-release ] && . /etc/lsb-release

if [ -z "$DISTRIB_DESCRIPTION" ] && [ -x /usr/bin/lsb_release ]; then
        # Fall back to using the very slow lsb_release utility
        DISTRIB_DESCRIPTION=$(lsb_release -s -d)
fi

figlet $BANNER -c | $LOLCAT -f
printf "\n"

printf "\t%s \t\tKernel: %s\n" "$DISTRIB_DESCRIPTION" "$(uname -r)"
printf "\n"

date=`date`
load=`cat /proc/loadavg | awk '{print $1}'`
root_usage=`df -h / | awk '/\// {print $(NF-1)}'`
memory_usage=`free -m | awk '/Mem:/ { total=$2 } /buffers\/cache/ { used=$3 } END { printf("%3.1f%%", used/total*100)}'`
swap_usage=`free -m | awk '/Swap/ { printf("%3.1f%%", "exit !$2;$3/$2*100") }'`
time=`uptime | grep -ohe 'up .*' | sed 's/,/\ hours/g' | awk '{ printf $2" "$3 }'`
processes=`ps aux | wc -l`
 
echo "\t\tAs of: $date"
echo
printf "\tSystem load:\t%s\t\tProcesses:\t%s\n" $load $processes
printf "\tMemory usage:\t%s\t\tUptime:\t\t%s\n" $memory_usage "$time"
printf "\tDisk usage:\t%s\t\tSwap:\t\t%s\n" $root_usage $swap_usage
echo
