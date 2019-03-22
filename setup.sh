#!/bin/bash

# create and activate a new virtualenv, or activate an already existing one
venv () {
	if [ ! -d env/ ]; then
		echo "Creating env/ ..."
		python -m venv env

		echo "Upgrading pip..."
		source env/bin/activate
		pip install --upgrade pip
	fi

	echo "Activating env..."
	source env/bin/activate
}

venv
pip install -r requirements.txt

source requirements-jupyter-extensions.sh

