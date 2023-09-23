#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
if [ -f $1 ]
then
    new=`echo $1 | tr [:lower:] [:upper:]`
    mv $1 $new
else
   new=`echo $1 | tr [:upper:] [:lower:]`
   echo $new
elif [ -d $1 ]
then
    for i in `ls $1`
    do
        echo $i | tr [:lower] [:upper;]
    done
