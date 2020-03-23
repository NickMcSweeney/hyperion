#!/bin/bash

# script to setup python virtual environemnt.
DIRECTORY=".venv"

stringContain() { [ -z "$1" ] || { [ -z "${2##*$1*}" ] && [ -n "$2" ];};}

isVenv=$(pip3 -V);
if ! stringContain '/usr/lib/python3' "${isVenv}"; then 
	echo "already in virtual environment exiting now: run 'deactivate' to close your venv";
	exit 1; 
fi

if [ -d "$DIRECTORY" ]; then
	# Control will enter here if $DIRECTORY exists.
	echo "virtual environemnt exists entering venv."
fi

if [ ! -d "$DIRECTORY" ]; then
	# Control will enter here if $DIRECTORY doesn't exist.
	echo "no virtual environment, creating one now.";

	# installing python stuff
	sudo apt install python3 python3-venv

	# create venv & source env
	python3 -m venv .venv
fi
	
#source .venv/bin/activate
eval ". .venv/bin/activate";

tensor=$(python3 -c 'import tensorflow as tf; print(tf.__version__)');

if [ ! -z "${tensor##*[!0-9]*}" ]; then
	echo "tensor installed";
else
	echo "tensor not installed";
	pip3 install --upgrade tensorflow
fi


keras=$(python3 -c 'import keras as keras; print(keras.__version__)');

if [ ! -z "${keras##*[!0-9]*}" ]; then
	echo "keras installed";
else
	echo "keras not installed";
	pip3 install --upgrade keras
fi

echo "env all setup with tensorflow. run 'source .venv/bin/activate' from this location to start the virtual environemnt.
