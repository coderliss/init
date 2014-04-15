
#!/bin/sh
LINUX=$HOME/linux

#qemu -kernel $LINUX/arch/i386/boot/bzImage -initrd rootfs.img.gz -append "root=/dev/ram rdinit=sbin/init noapic"
qemu-x86_64 -kernel $LINUX/arch/i386/boot/bzImage -initrd rootfs.img.gz -append "root=/dev/ram rdinit=sbin/init"
