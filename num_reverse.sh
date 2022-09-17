#!/bin/bash
re='^[0-9]+$'

if [ $# -eq 0 ]
then 
 echo "no argument is passed"
elif ! [[ $1 =~ $re ]]
then
 echo "error: Not a number" >&2
 exit 1
else
 n=$1
 num=0
 while [ $n -gt 0 ]
 do
  num=$(expr $num \* 10)
  temp=$(expr $n % 10)
  num=$(expr $num + $temp)
  n=$(expr $n / 10)
 done
fi

echo $num
