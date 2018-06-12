#!/bin/bash

# Export nest rrd to xml

source /home/joshpelkey/.virtualenvs/nestdata/bin/activate
cd /home/joshpelkey/code/nestdata

/home/joshpelkey/code/nestdata/rrdtool/bin/rrdtool xport -s now-3h -e now --step 300 \
	DEF:a=/home/joshpelkey/code/nestdata/nestdata.rrd:upstairs-temp:AVERAGE \
	DEF:b=/home/joshpelkey/code/nestdata/nestdata.rrd:downstairs-temp:AVERAGE \
	DEF:c=/home/joshpelkey/code/nestdata/nestdata.rrd:upstairs-humidity:AVERAGE \
	DEF:d=/home/joshpelkey/code/nestdata/nestdata.rrd:downstairs-humidity:AVERAGE \
	DEF:e=/home/joshpelkey/code/nestdata/nestdata.rrd:upstairs-fan:MAX \
	DEF:f=/home/joshpelkey/code/nestdata/nestdata.rrd:downstairs-fan:MAX \
	XPORT:a:"Upstairs Temp" \
	XPORT:b:"Downstairs Temp" \
	XPORT:c:"Upstairs Humidity" \
	XPORT:d:"Downstairs Humidity" \
	XPORT:e:"Upstairs Fan" \
	XPORT:f:"Downstairs Fan" > xml/nest3h.xml

/home/joshpelkey/code/nestdata/rrdtool/bin/rrdtool xport -s now-24h -e now --step 900 \
	DEF:a=/home/joshpelkey/code/nestdata/nestdata.rrd:upstairs-temp:AVERAGE \
	DEF:b=/home/joshpelkey/code/nestdata/nestdata.rrd:downstairs-temp:AVERAGE \
	DEF:c=/home/joshpelkey/code/nestdata/nestdata.rrd:upstairs-humidity:AVERAGE \
	DEF:d=/home/joshpelkey/code/nestdata/nestdata.rrd:downstairs-humidity:AVERAGE \
	DEF:e=/home/joshpelkey/code/nestdata/nestdata.rrd:upstairs-fan:MAX \
	DEF:f=/home/joshpelkey/code/nestdata/nestdata.rrd:downstairs-fan:MAX \
	XPORT:a:"Upstairs Temp" \
	XPORT:b:"Downstairs Temp" \
	XPORT:c:"Upstairs Humidity" \
	XPORT:d:"Downstairs Humidity" \
	XPORT:e:"Upstairs Fan" \
	XPORT:f:"Downstairs Fan" > xml/nest24h.xml

/home/joshpelkey/code/nestdata/rrdtool/bin/rrdtool xport -s now-48h -e now --step 1800 \
	DEF:a=/home/joshpelkey/code/nestdata/nestdata.rrd:upstairs-temp:AVERAGE \
	DEF:b=/home/joshpelkey/code/nestdata/nestdata.rrd:downstairs-temp:AVERAGE \
	DEF:c=/home/joshpelkey/code/nestdata/nestdata.rrd:upstairs-humidity:AVERAGE \
	DEF:d=/home/joshpelkey/code/nestdata/nestdata.rrd:downstairs-humidity:AVERAGE \
	DEF:e=/home/joshpelkey/code/nestdata/nestdata.rrd:upstairs-fan:MAX \
	DEF:f=/home/joshpelkey/code/nestdata/nestdata.rrd:downstairs-fan:MAX \
	XPORT:a:"Upstairs Temp" \
	XPORT:b:"Downstairs Temp" \
	XPORT:c:"Upstairs Humidity" \
	XPORT:d:"Downstairs Humidity" \
	XPORT:e:"Upstairs Fan" \
	XPORT:f:"Downstairs Fan" > xml/nest48h.xml

/home/joshpelkey/code/nestdata/rrdtool/bin/rrdtool xport -s now-8d -e now --step 7200 \
	DEF:a=/home/joshpelkey/code/nestdata/nestdata.rrd:upstairs-temp:AVERAGE \
	DEF:b=/home/joshpelkey/code/nestdata/nestdata.rrd:downstairs-temp:AVERAGE \
	DEF:c=/home/joshpelkey/code/nestdata/nestdata.rrd:upstairs-humidity:AVERAGE \
	DEF:d=/home/joshpelkey/code/nestdata/nestdata.rrd:downstairs-humidity:AVERAGE \
	DEF:e=/home/joshpelkey/code/nestdata/nestdata.rrd:upstairs-fan:MAX \
	DEF:f=/home/joshpelkey/code/nestdata/nestdata.rrd:downstairs-fan:MAX \
	XPORT:a:"Upstairs Temp" \
	XPORT:b:"Downstairs Temp" \
	XPORT:c:"Upstairs Humidity" \
	XPORT:d:"Downstairs Humidity" \
	XPORT:e:"Upstairs Fan" \
	XPORT:f:"Downstairs Fan" > xml/nest1w.xml

/home/joshpelkey/code/nestdata/rrdtool/bin/rrdtool xport -s now-1month -e now --step 10800 \
	DEF:a=/home/joshpelkey/code/nestdata/nestdata.rrd:upstairs-temp:AVERAGE \
	DEF:b=/home/joshpelkey/code/nestdata/nestdata.rrd:downstairs-temp:AVERAGE \
	DEF:c=/home/joshpelkey/code/nestdata/nestdata.rrd:upstairs-humidity:AVERAGE \
	DEF:d=/home/joshpelkey/code/nestdata/nestdata.rrd:downstairs-humidity:AVERAGE \
	DEF:e=/home/joshpelkey/code/nestdata/nestdata.rrd:upstairs-fan:MAX \
	DEF:f=/home/joshpelkey/code/nestdata/nestdata.rrd:downstairs-fan:MAX \
	XPORT:a:"Upstairs Temp" \
	XPORT:b:"Downstairs Temp" \
	XPORT:c:"Upstairs Humidity" \
	XPORT:d:"Downstairs Humidity" \
	XPORT:e:"Upstairs Fan" \
	XPORT:f:"Downstairs Fan" > xml/nest1m.xml

/home/joshpelkey/code/nestdata/rrdtool/bin/rrdtool xport -s now-3month -e now --step 43200 \
	DEF:a=/home/joshpelkey/code/nestdata/nestdata.rrd:upstairs-temp:AVERAGE \
	DEF:b=/home/joshpelkey/code/nestdata/nestdata.rrd:downstairs-temp:AVERAGE \
	DEF:c=/home/joshpelkey/code/nestdata/nestdata.rrd:upstairs-humidity:AVERAGE \
	DEF:d=/home/joshpelkey/code/nestdata/nestdata.rrd:downstairs-humidity:AVERAGE \
	DEF:e=/home/joshpelkey/code/nestdata/nestdata.rrd:upstairs-fan:MAX \
	DEF:f=/home/joshpelkey/code/nestdata/nestdata.rrd:downstairs-fan:MAX \
	XPORT:a:"Upstairs Temp" \
	XPORT:b:"Downstairs Temp" \
	XPORT:c:"Upstairs Humidity" \
	XPORT:d:"Downstairs Humidity" \
	XPORT:e:"Upstairs Fan" \
	XPORT:f:"Downstairs Fan" > xml/nest3m.xml

/home/joshpelkey/code/nestdata/rrdtool/bin/rrdtool xport -s now-1y -e now --step 86400 \
	DEF:a=/home/joshpelkey/code/nestdata/nestdata.rrd:upstairs-temp:AVERAGE \
	DEF:b=/home/joshpelkey/code/nestdata/nestdata.rrd:downstairs-temp:AVERAGE \
	DEF:c=/home/joshpelkey/code/nestdata/nestdata.rrd:upstairs-humidity:AVERAGE \
	DEF:d=/home/joshpelkey/code/nestdata/nestdata.rrd:downstairs-humidity:AVERAGE \
	DEF:e=/home/joshpelkey/code/nestdata/nestdata.rrd:upstairs-fan:MAX \
	DEF:f=/home/joshpelkey/code/nestdata/nestdata.rrd:downstairs-fan:MAX \
	XPORT:a:"Upstairs Temp" \
	XPORT:b:"Downstairs Temp" \
	XPORT:c:"Upstairs Humidity" \
	XPORT:d:"Downstairs Humidity" \
	XPORT:e:"Upstairs Fan" \
	XPORT:f:"Downstairs Fan" > xml/nest1y.xml
