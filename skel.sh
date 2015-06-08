#!/bin/sh

srcSkell()
{
# TODO: add bash autocomplete stuffs
  alias skel=""
}

if [[ -z $1 || -z $2 ]]; then 
	echo "USAGE: skel <projname> <new project path>";
	exit;
fi

if [[ $1 == "autocomplete" ]]; then
	srcSkell
fi

if [[ -z $SKELDIR ]]; then
	$SKELDIR=$HOME/.skel
fi

cppath=$SKELDIR/$1

if [[ ! -d $cppath ]]; then
	echo "error $cppath: path not found"
fi

if [[ ! -d $2 ]]; then
	mkdir -p $2
fi

cp -r $cppath $2
