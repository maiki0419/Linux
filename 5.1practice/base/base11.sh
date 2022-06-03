#!/bin/bash


var=$1

case $var in
	'blue' )
		echo 'GO';;
	'red' )
		echo 'STOP';;
	'yellow' )
		echo 'WAIT';;
	* )
		echo 'Wrong Color';;
esac


var2=$2

case $var2 in
	[a-z] )
		echo 'a-z val';;
	[A-Z] )
		echo 'A-Z val';;
	[0-9] )
		echo '0-9 val';;
esac
