#!/bin/bash
if [[ ! -f pip3 ]]
then
	sudo apt install python3-pip
fi
if [[ ! -f "aws" ]]
then
	echo "Installing aws cli for you."
	pip3 install awscli --upgrade --user
fi
