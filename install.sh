#!/bin/bash

err_msg(){
	printf "\033[35mError:\t\033[31m${1}\033[0m\n"
	exit 1
}

if [ ! -d "$HOME/.cargo/bin" ];
then
	curl https://sh.rustup.rs -sSf
else
	printf "Rust Cargo bin is already installed.\n"
fi

if [ -d "$HOME/.cargo" ];
then
	if [ -f "$HOME/.bashrc" ];then
		printf "Add  \033[32mexport 'PATH=\"\$HOME/.cargo/bin:\$PATH\"'\033[0m to .bashrc or .bash_profile\n"
	fi
else
	err_msg "No rust cargo was found"
fi
