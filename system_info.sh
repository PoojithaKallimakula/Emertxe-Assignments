#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
choice="y"
while [ "$choice" == "y" ]
do
    read -p "enter the choice" choice1
    case $choice1 in
        1)
            echo  "logged users$(whoami)"
            echo
             ;;
         2)
             echo "shell directory"`printenv SHELL`
             echo
             ;;
         3)
             echo "home directory"`$HOME`
             echo
             ;;
         4)
             echo "os name and version" $(uname -sv)
             echo
             ;;
         5)
            echo "current working dirctory"`pwd`
             echo
             ;;
         6)
             echo "users logged in "`who -q`
             echo
             ;;
         7)
             echo "available shells"`cat /etc/shells`
             echo
             ;;
         8)
             echo "hard disk"`hwinfo`
             echo
             ;;
         9)
             echo "cpu"`cat /proc/cpuinfo`
             echo
             ;;
         10)
             echo "memory"`cat /proc/meminfo`
             echo
             ;;
         11)
             echo "file system"`df`
             echo
             ;;
         12)
             echo "curreny rumming process"`ps`
             echo 
             ;;
         *)
             echo "invalid option"
             ;;
     esac
     echo "do yu wnat to comtinue y or n ?"
     read choice2
     if [ $choice2 == n ]
     then
         break
     else
         continue
     fi
 done
