#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
function array()
{
name=($@)
echo ${name[@]} # to print the total array
echo ${name[@]:1:3} #to print the specfic range of elements using offset
echo ${name[@]: -1} #acess last element
echo ${name[@]:$#-1}
var=`echo ${name[@]:2:1}`
echo $var
var="apple"
echo ${var:1:3}

}
array $@ 
