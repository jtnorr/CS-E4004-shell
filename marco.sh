#!/bin/bash

MARCO_PATH=""

marco() {
	MARCO_PATH=$(pwd)
}


polo() {
	if [[ -z "$MARCO_PATH" ]]
	then
		:
	else
		cd "$MARCO_PATH"
	fi
}
