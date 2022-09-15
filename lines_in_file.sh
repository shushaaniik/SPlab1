#!/bin/bash

lines_in_file()
{
	cat $1 | wc -l
}

lines_num=$(lines_in_file $1)

echo $lines_num
