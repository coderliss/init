#!/bin/bash

# configuration bash
cp .bashrc $HOME

# install package
sudo apt-get -y install build-essential
sudo apt-get -y install ctags cscope
sudo apt-get -y install gcc-multilib
sudo apt-get -y install ipython
sudo apt-get -y install git
sudo apt-get -y install ncurses-dev

# install vim
sudo apt-get -y install vim bc
sudo apt-get -y install kernel-package libncurses5-dev fakeroot wget bzip2
git clone https://github.com/coderliss/vim-config.git
cd vim-config; ./install.sh ; cd -
git clone https://github.com/coderliss/mutt-config.git

# setup git
git config --global user.name "Jimmy Li"
git config --global user.email coder.liss@gmail.com
git config --global core.editor vim
git config --global merge.tool vimdiff
git config --global push.default simple

echo "config ok"
git config --list
