#!/bin/bash

cd /tmp

#######################################
# myroot (Lower Dir1)
#######################################
mkdir -p myroot/bin
mkdir -p myroot/lib64
mkdir -p myroot/lib/x86_64-linux-gnu

# shell
cp /bin/sh myroot/bin/
cp /lib/x86_64-linux-gnu/libc.so.6 myroot/lib/x86_64-linux-gnu/
cp /lib64/ld-linux-x86-64.so.2 myroot/lib64/

#######################################
# tools (Lower Dir2)
#######################################
mkdir -p tools/bin
mkdir -p tools/lib64
mkdir -p tools/lib/x86_64-linux-gnu
mkdir -p tools/usr/bin
mkdir -p tools/usr/lib/x86_64-linux-gnu

# ls, rm, mkdir
cp /bin/ls tools/bin/
cp /bin/rm tools/bin/
cp /bin/mkdir tools/bin/
cp /lib64/ld-linux-x86-64.so.2 tools/lib64/
cp /lib/x86_64-linux-gnu/libselinux.so.1 tools/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libc.so.6 tools/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libpcre.so.3 tools/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libdl.so.2 tools/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libpthread.so.0 tools/lib/x86_64-linux-gnu/

# which
cp /usr/bin/which tools/usr/bin/

# ping
cp /bin/ping tools/bin/
cp /lib/x86_64-linux-gnu/libcap.so.2 tools/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libidn.so.11 tools/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libresolv.so.2 tools/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libc.so.6 tools/lib/x86_64-linux-gnu/
cp /usr/lib/x86_64-linux-gnu/libnettle.so.6 tools/usr/lib/x86_64-linux-gnu/

# stress
apt install -y stress
cp /usr/bin/stress tools/usr/bin/
cp /lib/x86_64-linux-gnu/libm.so.6 tools/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libc.so.6 tools/lib/x86_64-linux-gnu/
cp /lib64/ld-linux-x86-64.so.2 tools/lib64/

# hostname
cp /bin/hostname tools/bin/
cp /lib/x86_64-linux-gnu/libc.so.6 tools/lib/x86_64-linux-gnu/
cp /lib64/ld-linux-x86-64.so.2 tools/lib64/

# mount / umount
cp /bin/mount tools/bin/
cp /bin/umount tools/bin/
cp /lib/x86_64-linux-gnu/libmount.so.1 tools/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libc.so.6 tools/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libblkid.so.1 tools/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libselinux.so.1 tools/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/librt.so.1 tools/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libuuid.so.1 tools/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libpcre.so.3 tools/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libdl.so.2 tools/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libpthread.so.0 tools/lib/x86_64-linux-gnu/
cp /lib64/ld-linux-x86-64.so.2 tools/lib64/
