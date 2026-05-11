#!/bin/bash

mkdir myroot


mkdir -p myroot/bin;
cp /bin/sh myroot/bin/;

mkdir -p myroot/{lib64,lib/x86_64-linux-gnu
cp /lib/x86_64-linux-gnu/libc.so.6 myroot/lib/x86_64-linux-gnu/;
cp /lib64/ld-linux-x86-64.so.2 myroot/lib64;





mkdir tools

mkdir -p tools/usr/bin;
cp /usr/bin/which tools/usr/bin/;

mkdir -p tools/{bin,lib64,lib/ \
x86_64-linux-gnu};
cp /bin/rm tools/bin/;
cp /lib/x86_64-linux-gnu/libc.so.6 \
tools/lib/x86_64-linux-gnu/;
cp /lib64/ld-linux-x86-64.so.2 \
tools/lib64;


cp /bin/ls myroot/bin/;
cp /lib/x86_64-linux-gnu/\
{libselinux.so.1,libc.so.6,libpcre.so.3,libdl.so.2,\
libpthread.so.0} \
myroot/lib/x86_64-linux-gnu/;
cp /lib64/ld-linux-x86-64.so.2 myroot/lib64/;

# copy ps
ldd /bin/ps;
cp /bin/ps /tmp/myroot/bin/;
cp /lib/x86_64-linux-gnu/{libprocps.so.6,libdl.so.2,libc.so.6,libsystemd.so.0,librt.so.1,liblzma.so.5,libgcrypt.so.20,libpthread.so.0,libgpg-error.so.0} /tmp/myroot/lib/x86_64-linux-gnu/;
mkdir -p /tmp/myroot/usr/lib/x86_64-linux-gnu;
cp /usr/lib/x86_64-linux-gnu/liblz4.so.1 /tmp/myroot/usr/lib/x86_64-linux-gnu/;
cp /lib64/ld-linux-x86-64.so.2 /tmp/myroot/lib64/;

# copy mount
ldd /bin/mount;
cp /bin/mount /tmp/myroot/bin/;
cp /lib/x86_64-linux-gnu/{libmount.so.1,libc.so.6,libblkid.so.1,libselinux.so.1,librt.so.1,libuuid.so.1,libpcre.so.3,libdl.so.2,libpthread.so.0} /tmp/myroot/lib/x86_64-linux-gnu/;
cp /lib64/ld-linux-x86-64.so.2 /tmp/myroot/lib64/;

# copy mkdir
ldd /bin/mkdir;
cp /bin/mkdir /tmp/myroot/bin/;
cp /lib/x86_64-linux-gnu/{libselinux.so.1,libc.so.6,libpcre.so.3,libdl.so.2,libpthread.so.0} /tmp/myroot/lib/x86_64-linux-gnu/;
cp /lib64/ld-linux-x86-64.so.2 /tmp/myroot/lib64/;


mkdir -p /tmp/tools/{bin,lib64,lib/x86_64-linux-gnu,usr/lib/x86_64-linux-gnu,usr/bin};

# copy ping
ldd /bin/ping;
cp /bin/ping /tmp/tools/bin/;
cp /lib/x86_64-linux-gnu/{libcap.so.2,libidn.so.11,libresolv.so.2,libc.so.6} /tmp/tools/lib/x86_64-linux-gnu/;
cp /usr/lib/x86_64-linux-gnu/libnettle.so.6 /tmp/tools/usr/lib/x86_64-linux-gnu/;

# copy stress
ldd /usr/bin/stress;
cp /usr/bin/stress /tmp/tools/usr/bin/;
cp /lib/x86_64-linux-gnu/{libm.so.6,libc.so.6} /tmp/tools/lib/x86_64-linux-gnu/;
cp /lib64/ld-linux-x86-64.so.2 /tmp/tools/lib64/;

# copy hostname
ldd /bin/hostname;
cp /bin/hostname /tmp/tools/bin/;
cp /lib/x86_64-linux-gnu/libc.so.6 /tmp/tools/lib/x86_64-linux-gnu/;
cp /lib64/ld-linux-x86-64.so.2 /tmp/tools/lib64;

# copy umount
ldd /bin/umount;
cp /bin/umount /tmp/tools/bin/;
cp /lib/x86_64-linux-gnu/{libmount.so.1,libc.so.6,libblkid.so.1,libselinux.so.1,librt.so.1,libuuid.so.1,libpcre.so.3,libdl.so.2,libpthread.so.0} /tmp/tools/lib/x86_64-linux-gnu/;
cp /lib64/ld-linux-x86-64.so.2 /tmp/tools/lib64/;








mkdir /proc
mount -t proc proc /proc



mkdir -p rootfs/{container,work,merge}






