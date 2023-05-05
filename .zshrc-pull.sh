#!/bin/bash

if [ -f ~/.zshrc ];then
    rm -f ~/.zshrc
fi

curl -o ~/.zshrc https://raw.githubusercontent.com/igmr/shell-ubuntu/main/.zshrc
