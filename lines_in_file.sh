#!/bin/bash

lines_in_file()
{
 cat $1 | wc -l
}

if [ $# -eq 0 ]
then
 echo "no argument is passed"
elif ! [ -f $1 ]
then 
 echo "the argument is not a file"
elif ! [ -e $1 ]
then
 echo "file doesn't exist"
else
 lines_num=$(lines_in_file $1)
 echo $lines_num
fi
