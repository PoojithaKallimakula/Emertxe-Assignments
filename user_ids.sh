#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
arr=(`cat /etc/passwd | cut -d ":" -f3`)
size=${#arr[@]}
count=0
if [ $# -eq 1 ]
then
    echo "pass the two arguments"
   
 elif [ $1 -lt $2 ] || [ $# -eq 0 ]
 then
     if [ $# -eq 0 ]
     then
         num1=500
         num2=1000
     else
         num1=$1
         num2=$2
     fi
    for i in `seq 0 $((size-1))`
    do
        if [ ${arr[i]} -gt $num1 ] && [ ${arr[i]} -lt $num2 ]
        then
             count=$((count+1))
         fi
     done
     echo "total count range $num1 and $num2 "$count
 else
     echo "pass the correct range"
 fi

           
