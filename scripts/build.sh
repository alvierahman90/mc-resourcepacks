#!/usr/bin/env bash

if [ "$1" == "-h" ]
then
	echo "USAGE: build.sh 'path/to/resource/pack/src' 'output'"
	exit
fi

current_directory="$(pwd)"
cd "$1"
zip -r -0 "$2" .
mv "$2" "$current_directory/build"

