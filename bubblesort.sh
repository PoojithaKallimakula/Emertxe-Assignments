#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
arr=("$@")
if [ "$1" == "-a" ] || [ "$1" == "-d" ]
then
    for i in `seq $((${#arr[@]}-1)) -1 1`
    do
        for j in `seq $((i-1))`
        do
            if [ ${arr[$((j))]} -gt ${arr[$((j+1))]} ]
            then 
            
                temp=${arr[$((j))]}
                arr[$((j))]=${arr[$((j+1))]}
                arr[$((j+1))]=$temp
            fi
        done
    done
    if [ "$1" == "-a" ]
    then
        for i in `seq $((${#arr[@]}-1))`
        do
            echo -n "${arr[i]} "
        done
    else
        for i in `seq $((${#arr[@]}-1)) -1 1`
        do 
            echo -n "${arr[i]} "
        done
    fi
elif [ $# -eq 0 ]
then
    echo Error:please pass theargu,emts
else
    echo Error :pleae pass th vorrect choice
fi
