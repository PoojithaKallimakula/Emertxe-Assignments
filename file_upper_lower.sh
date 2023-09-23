#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc

    for i in `ls $1`
    do
    if [ -f $i ]
        then         
        new=`echo $i | tr [:upper:] [:lower:]`
        echo $new
elif [ -d $i ]
     then
         echo "welcome"
        new=`echo $i | tr [:lower:] [:upper:]`
        echo $new
    else
        echo "error"
    fi
     if [ -n "$new" ]
     then
         mv "$i" "$new"
     fi
 done
  
