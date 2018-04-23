#/usr/bin/ksh
echo "This script will housekeep logfiles from /logfiles"
echo "List existing logfiles"
ls -lrt /logfiles/*.log
echo "####Housekeeping logfiles####"
find /logfiles -type f -name '*.log' -exec rm {} \;
sleep 2
#echo "Checking if files are deleted"
#ls -lrt /logfiles/*.log

