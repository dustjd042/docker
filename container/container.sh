
# PID namespace 통해 프로세스가 1로 보이기 때문에, PID(1)을 cgroup에 할당
echo "1" > /sys/fs/cgroup/cpu/red/cgroup.procs;
echo "1" > /sys/fs/cgroup/memory/red/cgroup.procs;

# 오버레이 마운트
mkdir /redfs;
mkdir /redfs/container;
mkdir /redfs/work;
mkdir /redfs/merge;

mount -t overlay overlay -o \
lowerdir=/tmp/tools:/tmp/myroot,\
upperdir=/redfs/container,workdir=/redfs/work \
/redfs/merge

# pivot_root
mkdir -p /redfs/merge/put_old
cd /redfs/merge;
pivot_root . put_old;
cd /;

# put_old 제거
mount -t proc proc /proc;
umount -l put_old;
rm -rf put_old

hostname RED
