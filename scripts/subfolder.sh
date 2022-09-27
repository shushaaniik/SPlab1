#!/bin/bash
if [ $# -eq 0 ]
then 
 echo "no argument is passed"
 exit 1
elif ! [ -d $1 ]
then
 echo "error: not a directory" >&2
 exit 1
fi

ls -R $1

