#!/bin/sh
KERNEL=$HOME/linux
BUSYBOX=$HOME/busybox

cd $BUSYBOX/_install
find . | cpio -o --format=newc > $KERNEL/rootfs.img
cd $KERNEL
gzip -c rootfs.img > rootfs.img.gz
