#!/bin/bash

while read p;
do
	echo $p
	sleep 0.5
done < 'sample.txt'
