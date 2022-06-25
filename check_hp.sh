# check hugepages

#! /bin/bash
echo "check huagepages usage:   "

rst=`ls /proc`
for i in $rst
do 
if [ -f /proc/$i/status ]
then
 
 if [ `cat /proc/$i/status | grep -i huge | wc -l` -gt 0 ]
 then
    echo "-----------------"
	echo "pid: "$i 
	cat /proc/$i/status | grep -i huge
 fi
fi
done