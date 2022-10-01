#!/bin/bash
for (( i=3; i <= 30; ))
do
	echo "$i"
	i=$((i+3))
done

echo "$0"
echo "$$"
