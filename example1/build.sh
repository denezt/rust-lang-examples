#!/bin/bash

appname="number_game"

cargo_file="Cargo.toml"

add_deps(){
	if [ -f $cargo_file ];
	then
		if [ -z "$(egrep --only-matching 'rand = "0.4.0"' $cargo_file)" ];then
			sed -i 's/\[dependencies\]/\[dependencies\]\n\nrand \= \"0.4.0\"/g' $cargo_file
			printf "Streaming, changes to $cargo_file\n"
			cat $cargo_file
		else
			echo "Already modified with required dependencies."
		fi
	else
		echo "No file name $cargo_file exists\n"
	fi
}

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
add_deps
cp -r -v ../src .
cargo run
popd
for i in {9..0}
do
	sleep 1
	printf "T minus ${i}\n"
done
rm -rfv "number_game"
