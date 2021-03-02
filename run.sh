#!/bin/sh
echo "STARTING: $(date)"
SECONDS=0
python3 ./share_war.py
if (( $SECONDS > 3600 )) ; then
    let "hours=SECONDS/3600"
    let "minutes=(SECONDS%3600)/60"
    let "seconds=(SECONDS%3600)%60"
    echo "COMPLETE: $hours:$minutes:$seconds"
elif (( $SECONDS > 60 )) ; then
    let "minutes=(SECONDS%3600)/60"
    let "seconds=(SECONDS%3600)%60"
    echo "COMPLETE: 00:$minutes:$seconds"
else
    echo "00:00:$SECONDS"
fi
echo "ENDING: $(date)"
