#!/bin/bash


#echo PID is $$

function cleanup(){
	echo 'error'
	rm ./tmp_*.txt
	exit 1
}

function stop_15(){
	echo 'kill -15 stop'
	exit 1
}

echo $$ > tmp_$$.txt

trap "cleanup" 2
trap "stop_15" 15

for i in `seq 1 100`;
do
	echo $i
	sleep 0.3 
done
