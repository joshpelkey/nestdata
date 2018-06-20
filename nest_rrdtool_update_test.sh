#!/bin/bash

# Get nest data and put it in the nest rrd

source /home/jpelkey/.virtualenvs/nestdata/bin/activate
cd /home/jpelkey/code/nestdata

upstairs_temp=`nest -i 1 temp | sed 's/\r$//'`
sleep 5
downstairs_temp=`nest -i 0 temp | sed 's/\r$//'`
sleep 5
upstairs_humidity=`nest -i 1 humid | sed 's/\r$//'`
sleep 5
downstairs_humidity=`nest -i 0 humid | sed 's/\r$//'`
sleep 5
upstairs_fan=`nest -i 1 show | grep State | sed 's/.*://' | sed 's/^[ \t]*//'`
sleep 5
downstairs_fan=`nest -i 0 show | grep State | sed 's/.*://' | sed 's/^[ \t]*//'`

if [ $upstairs_fan == "off" ]; then
    upstairs_fan=0
else
    upstairs_fan=1
fi

if [ $downstairs_fan == "off" ]; then
    downstairs_fan=0
else
    downstairs_fan=1
fi

echo $upstairs_temp
echo $downstairs_temp
echo $upstairs_humidity
echo $downstairs_humidity
echo $upstairs_fan
echo $downstairs_fan
