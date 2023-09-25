#!/bin/bash
<<Doc
name:negative fibanacci series
input:5
output:
0 1 1 -2 3 -5
Description:generate a negative fibanacci series
author:K Poojitha
Doc
#if command line arguments is negative 
if [ $1 -lt 0 ]
then
    n=$((0-$1))
    a=0
    b=1
  echo -n  $a $b
  #generate a fibanacci series through given sequence
  for i in `seq $n`
  do
      #add a and b and store in sum
      sum=$((a+b))
      #if $i is even print postive sum
      if [ $(($i%2)) -eq 0 ]
      then 
          echo -n "$sum "
          #if $i is 0dd print negative sum
      else
          echo -n "-$sum "
      fi
      a=$b
      b=$sum
  done
  #print error message if it is invalid input
  else
      echo "invalid input"
  fi
