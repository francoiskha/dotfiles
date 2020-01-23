#!/bin/bash
if [[ ! -f "awsume" ]]
then
	echo "Installing awsume for you."
	pip3 install awsume --user
fi
