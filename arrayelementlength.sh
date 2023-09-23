#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
arr=("$@")
size=${#arr[@]}
for i in `seq 0 $((size-1))`
do
    echo "length of string (${arr[i]}) "${#arr[i]}
done
