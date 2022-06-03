#!/bin/bash

ls

read -p 'file_name:' file_name 

read -p 'input_val:' input_val

if [ -f $file_name ];
then
	echo $input_val >> $file_name
else
	echo 'not file'
fi
