#!/bin/bash

git config --global user.name "liss"
git config --global user.email coder.liss@gmail.com
git config --global core.editor vim
git config --global merge.tool vimdiff

echo "config ok"
git config --list

