#!/bin/bash

CGROUP_NAME=$1

# cgroup 파일 생성 (커널이 기본적인 파일 항목 생성)
mkdir -p /sys/fs/cgroup/cpu/$CGROUP_NAME;
mkdir -p /sys/fs/cgroup/memory/$CGROUP_NAME;

# cgroup 자원 설정 (CPU: 40%, RAM: 200MB, 메모리 스왑 제한)
echo 40000 > /sys/fs/cgroup/cpu/$CGROUP_NAME/cpu.cfs_quota_us;
echo 209715200 > /sys/fs/cgroup/memory/$CGROUP_NAME/memory.limit_in_bytes;
echo 0 > /sys/fs/cgroup/memory/$CGROUP_NAME/memory.swappiness;
