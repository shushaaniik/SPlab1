#!/bin/bash

echo "file path: "
read file

len=$(echo $file | wc -m)

if [ $len -eq 1 ] 
then 
 echo "no argument is passed"
 exit 1
elif [ -d $file ]
then
 echo "directory"
elif [ -f $file ]
then
 echo "regular file"
else
 echo "a wrong path"
 exit 1
fi

