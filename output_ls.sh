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
     new=`echo $PWD`
     cd $new
     echo *
else
    for i in $@
    do
        if [ -d $i ]
        then
            cd $i
            echo "$i:"
            echo *
       
    else
        echo "no such filr"
    fi
done
fi
