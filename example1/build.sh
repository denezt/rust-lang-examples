#!/bin/bash

cargo_file="Cargo.toml"

cargo new number_game
pushd $PWD
cd number_game
if [ -f "Cargo.toml" ];
then
	cat "$cargo_file"
fi
cargo run
popd
