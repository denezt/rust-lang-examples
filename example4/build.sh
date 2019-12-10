#!/bin/bash

option="${1}"

err_msg(){
	printf "\033[35mError:\t\033[31m${1}\033[0m\n"
}

build(){
	rustc main.rs
	if [ -f "./main" ];
	then
		./main
	else
		printf "\033[35mError:\t\033[31mFile did not compile!\033[0m\n"
	fi
}

trunc_build(){
	find -type f -name "main" -delete
}

help_menu(){
	printf "\033[36mRust Build Wrapper\033[0m\n"
	printf "Demo App\t[ -d, -demo, --demo ]\n"
	printf "Build App\t[ -b, -build, --build ]\n"
}

case $option in
	-d|-demo|--demo)
	build
	trunc_build
	;;
	-b|-build|--build) build;;
	-h|-help|--help) help_menu;;
	*) err_msg "Missing or invalid parameter was entered";;
esac
