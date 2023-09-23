#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
if [ $# -eq  0 ]
then
    echo "commands not pASSED"
else
    if [ -f $1 ]
    then
        if [ -s $1 ]
        then
            file_lines=`wc -l < $1`
            count=$(($file_lines/5))
            arr=(`shuf -i 1-$file_lines -n$count`)
            echo "before replacing"
            cat $1
            for i in ${arr[@]}
            do
                sed -i "$i s/.*/<---------------------Deleted---------------------------------------------->/g" $1
            done 
            echo "after replacing"
            cat $1
    else
        echo "cant replace string"
    fi
   else
    echo "Error file doesnt exist"
   fi
   fi
