#!/bin/bash


VAR=12
echo $VAR
readonly VAR
VAR=20
echo $VAR

function print_hello(){
	echo 'A hello'
}

print_hello

readonly -f print_hello

function print_hello(){
	echo 'B hello'
}

print_hello
