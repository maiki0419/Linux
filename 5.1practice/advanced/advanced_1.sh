#!/bin/bash


function print_hello(){
	echo 'hello world'
	echo $1
}

function set_name(){
	local name=$1
}

print_hello 'i am maiki'
name='Taro'
echo before: $name
set_name 'Hanako'
echo after: $name

