#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
num=`echo $1 | tr -cd [:digit:]`
size=${#num}
for i in `seq 0 $((size-1))`
do
    if [ $((i%2)) -eq 0 ]
    then
        sum=$((sum+${num:i:1}))
    else
        num1=$((2*${num:i:1}))
        if [ $num1 -gt 9 ]
        then
            num1=$((num1-9))
        fi
        sum1=$((sum1+num1))
    fi
done
total=$((sum+sum1))
if [ $((total%10)) -eq 0 ]
then
    echo "true"
else
    echo "false"
fi
