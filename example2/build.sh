#!/bin/bash

appname="numeric_ops"

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
	printf "Original $cargo_file file.\n"
	cat "$cargo_file"
fi
cp -r -v ../src .
cargo run
popd
