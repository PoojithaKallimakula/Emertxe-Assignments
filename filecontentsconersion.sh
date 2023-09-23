#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
if [ $# -eq 1 ] && [ ! -s $1 ]
then
    echo "no conents in the file"
elif [ $# -eq 0 ]
then
    echo "no arguments passed"
else
    read -p "enter the choice \n 1.upper to lower \n 2.lower to upper: " choice
    if [ $choice -eq 1 ]
    then
    tr [:upper:] [:lower:] <$1
    else
       tr [:lower:] [:upper:] <$1
    fi
fi
