#!/bin/bash
#
# This script will create the functions get_basename() and get_extension().


get_basename() {
	local path=$1
	local basename=$(basename "$path")
	echo "${basename%.*}"
}


get_extension() {
	local path=$1
	local basename=$(basename "$path")
	local extension="${basename##*.}"

	if [[ "$basename" = "$extension" ]]; then
		echo ""
	else
		echo "$extension"
	fi
}
