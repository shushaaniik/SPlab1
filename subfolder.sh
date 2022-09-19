#!/bin/bash
if [ $# -eq 0 ]
then 
 echo "no argument is passed"
elif ! [ -d $1 ]
then
 echo "error: not a directory" >&2
 exit 1
else
 ls -R $1
fi

