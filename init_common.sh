#!/bin/bash
sudo apt-get install build-essential
sudo apt-get install ctags cscope

# install vim
sudo apt-get install vim
sudo apt-get install kernel-package libncurses5-dev fakeroot wget bzip2
git clone https://github.com/coderliss/vim-config.git
cd vim-config; ./install.sh ; cd -
