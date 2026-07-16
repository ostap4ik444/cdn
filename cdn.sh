#!/usr/bin/env bash

# echo >> 'alias cdn="source path/to/your/script"' ~/.bashrc


n=$1
if [ $# -lt 1 ]; then
	echo "Too few arguments."
	return
elif [ $1 -lt 1 ]; then
	echo "Indexing starts at 1."
	return
fi

str="$(ls|head -n${n} | tail -n 1)"
if [ -d $str ]; then
cd "$str"
else
echo "Is not dir or dir does not exist."
fi



