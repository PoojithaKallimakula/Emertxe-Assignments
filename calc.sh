#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
if [ $# -eq 3 ]
then
case $2 in
    +)
        echo "$1 + $3 = "`echo "$1+$3" | bc`
        ;;
    -)
        echo "$1 - $3 = "`echo "$1-$3" | bc` 
        ;;
    x)
        echo "$1 x $3 = "`echo "$1*$3" | bc`
        ;;
    /)
        echo "$1 / $3 = "`echo "scale=2;$1/$3" | bc`
        ;;
esac
elif [ $# -eq 0 ]
then
    echo "Error:please pass the arguments through command line"
else
    echo "Error:please pass 3 arguments"
fi
