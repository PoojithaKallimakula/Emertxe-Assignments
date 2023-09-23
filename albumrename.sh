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
    echo "pass arguments"
else
  new=`echo $PWD`
  cd $new
  for i in `ls`
  do
      num=`printf "%03d " $j`
      name=$1$num
      if [[ $(file -b "$i") == ~^'JPEG' ]]
      then
           mov $i $name
           echo $name
      fi
      j=$((j+1))
  done
 fi 


