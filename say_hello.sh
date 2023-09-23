#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
i=`date +%H`
case $i in 
    05|06|07|08|09|10|11|12)
        echo -n "Good Morning" ;;
    13|14)
        echo  -n "Good noon" ;;
    15|16|17)
        echo -n "Good afternoon" ;;
    18|19|20|21)
        echo -n "Good Evening" ;;
    22|23|00|01|02|03|04)
        echo -n "Good Night" ;;
esac
echo -n " $(whoami), have a nice day"
echo
day=`date | cut -d " " -f1`
date1=`date +%d`
month=`date +%B`
year=`date | cut -d " " -f6`
time1=`date | cut -d " " -f4`" "`date +%p`
echo " this is $day $date1 in $month of $year ($time1)"
