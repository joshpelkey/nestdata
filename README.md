# nestdata

Don't forget to create virtualenv for this called nestdata, or update the scripts
Don't forget to pip install python-nest
Don't forget to auth python-nest
Don't forget to update bash scripts to change the directories as needed

I had to manually compile rrdtool v1.4.9 and reference that b/c 1.5.5 wasn't exporting times in the
xml....whhhy

Don't forget to update cron and update paths as needed

    # Run this every 5 min
    */5 * * * * /bin/bash /home/joshpelkey/code/nestdata/nest_rrdtool_update.sh && /bin/bash /home/joshpelkey/code/nestdata/nest_rrdtool_export.sh
