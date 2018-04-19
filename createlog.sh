#/usr/bin/ksh
echo "This will create dummy log files in /logfiles"
echo "####Creating logfiles####"
touch /logfiles/xyz.log
touch /logfiles/abc.log
touch /logfiles/myname.log
touch /logfiles/arbitaryfile.log
echo "Listing created logfiles"
ls -lrt /logfiles/*.log
