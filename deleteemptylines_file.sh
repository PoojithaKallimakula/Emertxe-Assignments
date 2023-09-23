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
    echo "pass the arumemts"
else
    sed -i '/^[[:blank:]]*$/d' $1
    echo "deleted "
   cat $1
fi
