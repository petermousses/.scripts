#!/bin/bash

# Basic No/Yes prompt to be used in other scripts

if [ "$1" != "" ]; then
	[ $( echo -e "No\nYes" | dmenu -p "$1" ) == "Yes" ] && $2
fi
