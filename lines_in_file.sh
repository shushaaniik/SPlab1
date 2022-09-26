#!/bin/bash

lines_in_file()
{
 cat $1 | wc -l
}

if [ $# -eq 0 ]
then
 echo "no argument is passed"
 exit 1
elif ! [ -f $1 ] | [ -e $1 ] 
then
 echo "file doesn't exist"
 exit 1
fi

lines_num=$(lines_in_file $1)
echo $lines_num
exit 0

