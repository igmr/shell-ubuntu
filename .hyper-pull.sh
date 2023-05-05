#!/bin/bash

if [ -f ~/.zshrc ];then
    rm -f ~/.hyper.js
fi

curl -o ~/.hyper.js https://raw.githubusercontent.com/igmr/shell-ubuntu/main/.hyper.js
