#!/bin/bash


n=0

while (( $n < 10 ));
do
	echo $n
	sleep 1
	n=$(( n + 1 ))
done
exit 0



read -p 'String val:' var

while [ $var != 'exit' ];
do
	echo 'var:' $var
	echo 'exit end'
	read -p 'String val:' var
done
