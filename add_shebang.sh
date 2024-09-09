#!/bin/bash
#
# Add a shebang at the top of the files inputted.

add_shebang() {
	local file="$1"
	local shebang="#!/bin/bash"


	if [ ! -f "$file" ];
	then
		return 1
	fi


	if [ -s "$file" ] && head -n 1 "$file" | grep -q '^#!';
	then
		return 0
	fi


	echo "$shebang" | cat - "$file" > temp && mv temp "$file"

}


if [ $# == 0 ]
then
	echo "Usage: $0 file1 [file2...]"
	exit 1
fi




for file in "$@";
do
	add_shebang "$file"
done
