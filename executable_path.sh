#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
arr=(`echo $PATH | tr ':' " "`)
for i in ${arr[@]}
do
    count=0
    if [ -d "$i" ] && [ -x "$i" ]
    then
    for j in `ls $i`
    do
            count=$((count+1))
    done
    echo "current dir" $i
    echo "current count" $count
    total=$((total+count))
fi
done
echo "total count-"$total
