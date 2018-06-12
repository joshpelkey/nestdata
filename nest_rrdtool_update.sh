#!/bin/bash

# Get nest data and put it in the nest rrd

source /home/joshpelkey/.virtualenvs/nestdata/bin/activate
cd /home/joshpelkey/code/nestdata

upstairs_temp=`nest -i 0 temp | sed 's/\r$//'`
downstairs_temp=`nest -i 1 temp | sed 's/\r$//'`
upstairs_humidity=`nest -i 0 humid | sed 's/\r$//'`
downstairs_humidity=`nest -i 1 humid | sed 's/\r$//'`
upstairs_fan=`nest -i 0 fan`
downstairs_fan=`nest -i 1 fan`

if [ $upstairs_fan == "True" ]; then
    upstairs_fan=1
else
    upstairs_fan=0
fi

if [ $downstairs_fan == "True" ]; then
    downstairs_fan=1
else
    downstairs_fan=0
fi

#echo $upstairs_temp
#echo $downstairs_temp
#echo $upstairs_humidity
#echo $downstairs_humidity
#echo $upstairs_fan
#echo $downstairs_fan

/usr/bin/rrdtool update nestdata.rrd N:$upstairs_temp:$downstairs_temp:$upstairs_humidity:$downstairs_humidity:$upstairs_fan:$downstairs_fan
