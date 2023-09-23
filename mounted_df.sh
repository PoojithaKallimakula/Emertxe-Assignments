#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
fs=(`df | cut -d " " -f1`)
mount=(`df | tr -s " " | cut -d " " -f6`)
used_space=(`df | tr -s " " | cut -d " " -f4`)
free_space=(`df | tr -s " " | cut -d " " -f5`)
flag=1
if [ $# -eq 0 ]
then
    echo "pass the arguments"
else
    for i in `seq 0 $((${#fs[@]}-1))`
do
    if [ "$1" == "${fs[i]}" ]
     then
          flag=2
            echo "File-System $1 is mounted on ${mount[i]} and it is having ${used_space[i]} used space with ${free_space[i]} KB free"
        fi
done
    if [ $flag -eq 1 ]
    then
        echo "it is not  mounted"

    fi
fi
