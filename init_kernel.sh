#!/bin/bash

# tools
sudo apt-get -y install pax-utils # for scanelf command

echo "which version to work in:"
echo "1. torvalds mainline"
echo "2. linux-stable"
echo "3. linux-next"
echo -n "which is your choice:"
read CHOICE

if [ $CHOICE -ne 1 ] && [ $CHOICE -ne 2 ] && [ $CHOICE -ne 3 ]; then
	echo "invaild choice, do noting, please start up manually"
fi

if [ $CHOICE -eq 1 ]; then
	#mainline
	git clone git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git $HOME/linux
	cd $HOME/linux; make defconfig; make tags; cd -
	sed -i '$aset tags+=$HOME/linux/tags' $HOME/.vimrc
fi
if [ $CHOICE -eq 2 ]; then
	#stable 
	git clone git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git $HOME/linux-stable
	cd $HOME/linux-stable; make defconfig; make tags; cd -
	sed -i '$aset tags+=$HOME/linux-stable/tags' $HOME/.vimrc
fi
if [ $CHOICE -eq 3 ]; then
	#next 
	git clone git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git $HOME/linux-next
	git remote add linux-next git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
	git fetch linux-next
	git fetch --tags linux-next
	git remote update
	cd $HOME/linux-next; make defconfig; make tags; cd -
	sed -i '$aset tags+=$HOME/linux-next/tags' $HOME/.vimrc
fi

echo -n "install other source[y/n]:"
read YES_OR_NO
if [ "$YES_OR_NO" = "y" ] || [ "$YES_OR_NO" = "Y" ]; then
	#other resource
	git clone git://git.sv.gnu.org/coreutils $HOME/coreutils
	git clone https://git.fedorahosted.org/git/linux-pam.git $HOME/linux-pam
	git clone git://sourceware.org/git/glibc.git $HOME/glibc
	git clone git://git.kernel.org/pub/scm/utils/util-linux/util-linux.git $HOME/util-linux
fi

