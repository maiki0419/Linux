#!/bin/bash

var=1
while (( $var <= 100 ));
do
	if [ $(( var % 3 )) -eq 0 ] && [ $(( var % 5 )) -eq 0 ];
	then
		echo 'FizzBuzz'
	elif [ $(( var % 3 )) -eq 0 ];
	then
		echo 'Fizz'
	elif [ $(( var % 5 )) -eq 0 ];
	then
		echo 'Buzz'
	else
		echo $var
	fi

	var=$(( var + 1 ))
done
