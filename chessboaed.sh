#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
for i in `seq 8`
do
    for j in `seq 8`
    do
        if [ $((j%2)) -eq 0 ]
        then
            echo -n "black"
        else
            echo -n "white"
        fi
    done
    echo
done

