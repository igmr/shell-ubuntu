#!/bin/bash

if [ -f ~/.hyper.js ];then
    rm -f ~/.hyper.js
fi

curl -o ~/.hyper.js https://raw.githubusercontent.com/igmr/shell-ubuntu/main/.hyper.js
