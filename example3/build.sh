#!/bin/bash

rustc main.rs
if [ -f "./main" ];
then
	./main
else
	printf "\033[35mError:\t\033[31mFile did not compile!\033[0m\n"
fi
