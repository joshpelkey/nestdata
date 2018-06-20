#!/bin/bash

# Export nest rrd to xml

source /home/jpelkey/.virtualenvs/nestdata/bin/activate
cd /home/jpelkey/code/nestdata

/home/jpelkey/code/nestdata/rrdtool/bin/rrdtool xport -s now-3h -e now --step 300 \
	DEF:a=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-temp:AVERAGE \
	DEF:b=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-temp:AVERAGE \
	DEF:c=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-humidity:AVERAGE \
	DEF:d=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-humidity:AVERAGE \
	DEF:e=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-fan:AVERAGE \
	DEF:f=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-fan:AVERAGE \
	XPORT:a:"Upstairs Temp" \
	XPORT:b:"Downstairs Temp" \
	XPORT:c:"Upstairs Humidity" \
	XPORT:d:"Downstairs Humidity" \
	XPORT:e:"Upstairs Fan" \
	XPORT:f:"Downstairs Fan" > /usr/share/nginx/www/joshpelkey.com/me/nest/xml/nest3h.xml

/home/jpelkey/code/nestdata/rrdtool/bin/rrdtool xport -s now-6h -e now --step 300 \
	DEF:a=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-temp:AVERAGE \
	DEF:b=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-temp:AVERAGE \
	DEF:c=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-humidity:AVERAGE \
	DEF:d=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-humidity:AVERAGE \
	DEF:e=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-fan:AVERAGE \
	DEF:f=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-fan:AVERAGE \
	XPORT:a:"Upstairs Temp" \
	XPORT:b:"Downstairs Temp" \
	XPORT:c:"Upstairs Humidity" \
	XPORT:d:"Downstairs Humidity" \
	XPORT:e:"Upstairs Fan" \
	XPORT:f:"Downstairs Fan" > /usr/share/nginx/www/joshpelkey.com/me/nest/xml/nest6h.xml

/home/jpelkey/code/nestdata/rrdtool/bin/rrdtool xport -s now-12h -e now --step 300 \
	DEF:a=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-temp:AVERAGE \
	DEF:b=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-temp:AVERAGE \
	DEF:c=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-humidity:AVERAGE \
	DEF:d=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-humidity:AVERAGE \
	DEF:e=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-fan:AVERAGE \
	DEF:f=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-fan:AVERAGE \
	XPORT:a:"Upstairs Temp" \
	XPORT:b:"Downstairs Temp" \
	XPORT:c:"Upstairs Humidity" \
	XPORT:d:"Downstairs Humidity" \
	XPORT:e:"Upstairs Fan" \
	XPORT:f:"Downstairs Fan" > /usr/share/nginx/www/joshpelkey.com/me/nest/xml/nest12h.xml

/home/jpelkey/code/nestdata/rrdtool/bin/rrdtool xport -s now-24h -e now --step 900 \
	DEF:a=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-temp:AVERAGE \
	DEF:b=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-temp:AVERAGE \
	DEF:c=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-humidity:AVERAGE \
	DEF:d=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-humidity:AVERAGE \
	DEF:e=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-fan:AVERAGE \
	DEF:f=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-fan:AVERAGE \
	XPORT:a:"Upstairs Temp" \
	XPORT:b:"Downstairs Temp" \
	XPORT:c:"Upstairs Humidity" \
	XPORT:d:"Downstairs Humidity" \
	XPORT:e:"Upstairs Fan" \
	XPORT:f:"Downstairs Fan" > /usr/share/nginx/www/joshpelkey.com/me/nest/xml/nest24h.xml

/home/jpelkey/code/nestdata/rrdtool/bin/rrdtool xport -s now-48h -e now --step 1800 \
	DEF:a=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-temp:AVERAGE \
	DEF:b=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-temp:AVERAGE \
	DEF:c=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-humidity:AVERAGE \
	DEF:d=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-humidity:AVERAGE \
	DEF:e=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-fan:AVERAGE \
	DEF:f=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-fan:AVERAGE \
	XPORT:a:"Upstairs Temp" \
	XPORT:b:"Downstairs Temp" \
	XPORT:c:"Upstairs Humidity" \
	XPORT:d:"Downstairs Humidity" \
	XPORT:e:"Upstairs Fan" \
	XPORT:f:"Downstairs Fan" > /usr/share/nginx/www/joshpelkey.com/me/nest/xml/nest48h.xml

/home/jpelkey/code/nestdata/rrdtool/bin/rrdtool xport -s now-8d -e now --step 7200 \
	DEF:a=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-temp:AVERAGE \
	DEF:b=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-temp:AVERAGE \
	DEF:c=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-humidity:AVERAGE \
	DEF:d=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-humidity:AVERAGE \
	DEF:e=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-fan:AVERAGE \
	DEF:f=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-fan:AVERAGE \
	XPORT:a:"Upstairs Temp" \
	XPORT:b:"Downstairs Temp" \
	XPORT:c:"Upstairs Humidity" \
	XPORT:d:"Downstairs Humidity" \
	XPORT:e:"Upstairs Fan" \
	XPORT:f:"Downstairs Fan" > /usr/share/nginx/www/joshpelkey.com/me/nest/xml/nest1w.xml

/home/jpelkey/code/nestdata/rrdtool/bin/rrdtool xport -s now-1month -e now --step 10800 \
	DEF:a=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-temp:AVERAGE \
	DEF:b=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-temp:AVERAGE \
	DEF:c=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-humidity:AVERAGE \
	DEF:d=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-humidity:AVERAGE \
	DEF:e=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-fan:AVERAGE \
	DEF:f=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-fan:AVERAGE \
	XPORT:a:"Upstairs Temp" \
	XPORT:b:"Downstairs Temp" \
	XPORT:c:"Upstairs Humidity" \
	XPORT:d:"Downstairs Humidity" \
	XPORT:e:"Upstairs Fan" \
	XPORT:f:"Downstairs Fan" > /usr/share/nginx/www/joshpelkey.com/me/nest/xml/nest1m.xml

/home/jpelkey/code/nestdata/rrdtool/bin/rrdtool xport -s now-3month -e now --step 43200 \
	DEF:a=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-temp:AVERAGE \
	DEF:b=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-temp:AVERAGE \
	DEF:c=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-humidity:AVERAGE \
	DEF:d=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-humidity:AVERAGE \
	DEF:e=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-fan:AVERAGE \
	DEF:f=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-fan:AVERAGE \
	XPORT:a:"Upstairs Temp" \
	XPORT:b:"Downstairs Temp" \
	XPORT:c:"Upstairs Humidity" \
	XPORT:d:"Downstairs Humidity" \
	XPORT:e:"Upstairs Fan" \
	XPORT:f:"Downstairs Fan" > /usr/share/nginx/www/joshpelkey.com/me/nest/xml/nest3m.xml

/home/jpelkey/code/nestdata/rrdtool/bin/rrdtool xport -s now-1y -e now --step 86400 \
	DEF:a=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-temp:AVERAGE \
	DEF:b=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-temp:AVERAGE \
	DEF:c=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-humidity:AVERAGE \
	DEF:d=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-humidity:AVERAGE \
	DEF:e=/home/jpelkey/code/nestdata/nestdata.rrd:upstairs-fan:AVERAGE \
	DEF:f=/home/jpelkey/code/nestdata/nestdata.rrd:downstairs-fan:AVERAGE \
	XPORT:a:"Upstairs Temp" \
	XPORT:b:"Downstairs Temp" \
	XPORT:c:"Upstairs Humidity" \
	XPORT:d:"Downstairs Humidity" \
	XPORT:e:"Upstairs Fan" \
	XPORT:f:"Downstairs Fan" > /usr/share/nginx/www/joshpelkey.com/me/nest/xml/nest1y.xml
