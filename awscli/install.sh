#!/bin/bash
if [[ ! -f "aws" ]]
then
	echo "Installing aws cli for you."
	pip3 install awscli --upgrade --user
fi
