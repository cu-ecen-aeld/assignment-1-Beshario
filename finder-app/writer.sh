#!/bin/bash

# Check for the correct number of arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 filesdir content"
    exit 1
fi

dir_path=$(dirname "$1")
mkdir -p "$dir_path"
echo "$2" > "$1"

if [ $? -eq 0 ]; then
	echo "successful write"
else
	echo "failed writing $2 to $1"
fi
