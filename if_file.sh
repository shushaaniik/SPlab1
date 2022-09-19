#!/bin/bash

echo "file path: "
read file
if [ -d $file ]
then
 echo directory
elif [ -f $file ]
then
 echo "regular file"
else
 echo "a wrong path"
fi

