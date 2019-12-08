#!/bin/bash

appname="number_game"

cargo_file="Cargo.toml"

if [ -d "$appname" ];
then
	rm -rfv $appname
fi
cargo new $appname
pushd $PWD
cd $appname
if [ -f "$cargo_file" ];
then
	cat "$cargo_file"
fi
cargo run
popd
