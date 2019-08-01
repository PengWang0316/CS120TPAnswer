#! /bin/bash

# One problem we may have is the server may be running in a different time zone.
# We can use the following command to change it in order to get the correct time.
export TZ=America/Los_Angeles

year=$( date +%Y )
month=$( date +%m )
day=$( date +%d )
hour=$( date +%H )
minute=$( date +%M )
second=$( date +%S )

echo $year-$month-$day $hour:$minute:$second
