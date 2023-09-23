#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
for i in $@
do
    if [ -d $i ]
    then
        echo $i
        echo *
    fi
done
