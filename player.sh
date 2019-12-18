#!/bin/bash

export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
export DISPLAY=:0

wget http://raw.githubusercontent.com/coderholic/pyradio/master/pyradio/stations.csv -O stations.csv >& wget_output

stations=()

while read row; do
  column=`echo ${row} | cut -d , -f 2`
  stations+=(${column})
done < stations.csv

index=17 # $(($RANDOM % ${#stations[@]}))

mplayer -playlist ${stations[${index}]} > player_output 2> player_error < /dev/null &

echo $! > /tmp/piradio.pid

exit 0
