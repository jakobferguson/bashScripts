#!/bin/bash

usage(){
	echo "usage: goog.sh [word] [url]"
	echo "word: word to search for"
	echo "url: url of website to search for word on"
}

if [[ ("$1" != "") && ("$2" != "")]]; then
	WEBSITE=$(wget -qO- "$2")
	echo -n "$1: "
	echo "$WEBSITE" | grep -o $1 | wc -l
else
	usage
	exit 2
fi
