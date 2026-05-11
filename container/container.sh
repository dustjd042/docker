#!/bin/bash

CGROUP_NAME=$1

# PID namespace 통해 프로세스가 1로 보이기 때문에, PID(1)을 cgroup에 할당
echo "1" > /sys/fs/cgroup/cpu/$CGROUP_NAME/cgroup.procs;
echo "1" > /sys/fs/cgroup/memory/$CGROUP_NAME/cgroup.procs;

# 오버레이 마운트
mkdir -p /$CGROUP_NAME/{container,work,merge}
mount -t overlay overlay -o lowerdir=/tmp/tools:/tmp/myroot, upperdir=/$CGROUP_NAME/container, workdir=/$CGROUP_NAME/work /$CGROUP_NAME/merge

# pivot_root
mkdir -p /$CGROUP_NAME/merge/put_old
cd /$CGROUP_NAME/merge;
pivot_root . put_old;
cd /;

# put_old 제거
mount -t proc proc /proc;
umount -l put_old;
rm -rf put_old

hostname $CGROUP_NAME
