#!/bin/bash
sudo apt-get -y install build-essential
sudo apt-get -y install ctags cscope

# install vim
sudo apt-get -y install vim bc
sudo apt-get -y install kernel-package libncurses5-dev fakeroot wget bzip2
git clone https://github.com/coderliss/vim-config.git
cd vim-config; ./install.sh ; cd -
