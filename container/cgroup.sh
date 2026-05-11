#!/bin/bash

# cgroup 파일 생성 (커널이 기본적인 파일 항목 생성)
mkdir /sys/fs/cgroup/cpu/red;
mkdir /sys/fs/cgroup/memory/red;

# cgroup 자원 설정 (CPU: 40%, RAM: 200MB, 메모리 스왑 제한)
echo 40000 > /sys/fs/cgroup/cpu/red/cpu.cfs_quota_us;
echo 209715200 > /sys/fs/cgroup/memory/red/memory.limit_in_bytes;
echo 0 > /sys/fs/cgroup/memory/red/memory.swappiness;

# cgroup 파일 생성 (커널이 기본적인 파일 항목 생성)
mkdir /sys/fs/cgroup/cpu/blue;
mkdir /sys/fs/cgroup/memory/blue;

# cgroup 자원 설정 (CPU: 40%, RAM: 200MB, 메모리 스왑 제한)
echo 40000 > /sys/fs/cgroup/cpu/blue/cpu.cfs_quota_us;
echo 209715200 > /sys/fs/cgroup/memory/blue/memory.limit_in_bytes;
echo 0 > /sys/fs/cgroup/memory/blue/memory.swappiness;
