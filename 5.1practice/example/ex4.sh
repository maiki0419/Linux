#!/bin/bash


read -p 'filename:' fh

if [ -f $fh ];
then
	read -p 'sum, avg, min, max: ' command
	if [ $command = 'sum' ];
	then
		sum=0
		while read p;
		do
			sum=$(( sum + p ))
		done < $fh
		echo 'sum:' $sum
		exit 0
	elif [ $command = 'avg' ];
	then
		sum=0
		count=0
		while read p;
		do
			sum=$(( sum + p ))
			count=$(( count + 1 ))
		done < $fh
		avg=$(( sum / count ))
		echo avg: $avg
		exit 0
	elif [ $command = 'min' ];
	then
		min=101
		while read p;
		do
			if [ $min -gt $p ];
			then
				min=$p
			fi
		done < $fh
		echo min: $min
		exit 0
	elif [ $command = 'max' ];
	then
		max=0
		while read p;
		do
			if [ $max -lt $p ];
			then
				max=$p
			fi
		done < $fh
		echo max: $max
		exit 0
	else
		echo 'not command'
		exit 1
	fi
	

else
	echo 'not file'
	exit 1
fi
