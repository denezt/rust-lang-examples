#!/bin/bash

cargo_file="number_game/Cargo.toml"

if [ -f $cargo_file ];
then
	if [ -z "$(egrep --only-matching 'rand = "0.4.0"' $cargo_file)" ];then
		sed -i 's/\[dependencies\]/\[dependencies\]\n\nrand \= \"0.4.0\"/g' $cargo_file
	else
		echo "Already modified with required dependencies."
	fi
else
	echo "No file name $cargo_file exists\n"
fi
