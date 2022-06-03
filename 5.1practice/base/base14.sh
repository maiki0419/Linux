#!/bin/bash

for command in ls pwd date;
do
	echo $command
	$command
done


for i in `seq 1 10`;
do
	echo $i
	if [ $i -eq 3 ];
	then
		break
	fi
	sleep 0.5
done
