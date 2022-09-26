#!/bin/bash
re='^-?[0-9]+$'

if [[ $# -eq 0 ]] ;
then 
 echo "no argument is passed"
 exit 1
elif [[ ! $1 =~ $re ]] ;
then
 echo "error: Not a number" >&2
 exit 1
fi

n=$1

sign=1
if [ $n -lt 0 ]
then 
 sign=-1
 n=$(expr $n \* -1)
fi

num=0

while [ $n -gt 0 ]
do
 num=$(expr $num \* 10)
 temp=$(expr $n % 10)
 num=$(expr $num + $temp)
 n=$(expr $n / 10)
done

num=$(expr $num \* $sign)

echo $num
exit 0
