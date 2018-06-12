#!/bin/bash

# create an rrd database starting now and having records
# every 5 min

source /home/joshpelkey/.virtualenvs/nestdata/bin/activate
cd /home/joshpelkey/code/nestdata/

rrdtool create nestdata.rrd \
    --start N --step 300 \
    DS:upstairs-temp:GAUGE:1200:-150:150 \
    DS:downstairs-temp:GAUGE:1200:-150:150 \
    DS:upstairs-humidity:GAUGE:1200:0:100 \
    DS:downstairs-humidity:GAUGE:1200:0:100 \
    DS:upstairs-fan:GAUGE:1200:0:1 \
    DS:downstairs-fan:GAUGE:1200:0:1 \
    RRA:AVERAGE:0.5:1:2880 \
 	RRA:AVERAGE:0.5:6:700 \
 	RRA:AVERAGE:0.5:6:700 \
 	RRA:AVERAGE:0.5:24:775 \
 	RRA:AVERAGE:0.5:144:1500 \
 	RRA:AVERAGE:0.5:288:2000 \
 	RRA:MIN:0.5:1:600 \
 	RRA:MIN:0.5:6:700 \
 	RRA:MIN:0.5:24:775 \
 	RRA:MIN:0.5:144:1500 \
 	RRA:MIN:0.5:288:2000 \
 	RRA:MAX:0.5:6:700 \
 	RRA:MAX:0.5:24:775 \
 	RRA:MAX:0.5:144:1500 \
 	RRA:MAX:0.5:288:2000 \
