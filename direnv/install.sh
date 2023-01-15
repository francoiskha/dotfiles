#!/bin/sh
if [[ "$(uname -s)" == "Darwin" ]]
then
    brew install direnv
elif [[ "$(uname -s)" == "Linux" ]]
    sudo apt install direnv
fi