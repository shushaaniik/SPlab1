#!/bin/bash

n=$1
num=0
while [ $n -gt 0 ]
do
	num=$(expr $num \* 10)
	temp=$(expr $n % 10)
	num=$(expr $num + $temp)
	n=$(expr $n / 10)
done

echo $num
