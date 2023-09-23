#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
if [ $# -eq 0 ]
then
    echo "please pass the arguments"
elif [  $# -eq 3 ]
then
    size=$(($1+$2))
    file_size=`wc -l < $3`
    echo $file_size
    if [ $size -lt $file_size ]
    then
     cat $3 | head -$((size-1)) | tail -$2
   else
    echo "file size id $file_size"
   fi
else
    echo "passthe arfuments with size"
fi
