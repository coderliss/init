#!/bin/bash

#mainline
git clone git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git $HOME/linux
cd $HOME/linux; make defconfig; make tags; cd -
sed -i '$aset tags+=$HOME/linux/tags' $HOME/.vimrc

#stable 
git clone git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git $HOME/linux-stable
cd $HOME/linux-stable; make defconfig; make tags; cd -
sed -i '$aset tags+=$HOME/linux-stable/tags' $HOME/.vimrc

#other resource
git clone git://git.sv.gnu.org/coreutils $HOME/coreutils
git clone https://git.fedorahosted.org/git/linux-pam.git $HOME/linux-pam
git clone git://sourceware.org/git/glibc.git $HOME/glibc
git clone git://git.kernel.org/pub/scm/utils/util-linux/util-linux.git $HOME/util-linux
