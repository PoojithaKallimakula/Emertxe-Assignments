#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
new=$1
size=$((${#new}-1))
var=${new:$size:1}
if [ "$var" == "+" ] || [ "$var" == "-" ] || [ "$var" == "x" ]
then
    sum=${new:0:1}
    if [ "$var" == "x" ]
    then
        var="*"
    fi
    for i in `seq $((size-1))`
    do
        ((sum$var=${new:$i:1}))
    done
    echo $sum
elif [ "$var" == "/" ]
then
    sum=${new:0:1} 
    for i in `seq $((size-1))`
    do
        sum=`echo "scale=2;$sum/${new:$i:1}"  | bc`
    done
    echo $sum
else
    echo "pleASE PASS the opeartor"
fi
