#!/bin/bash

# 네트워크 네임스페이스 생성
ip netns add RED
ip netns add BLUE

# RED와 BLUE 네트워크 namespace를 가상 이더넷 연결
ip link add veth0 netns RED type veth peer name veth1 netns BLUE

# RED 컨테이너 네트워크 설정
ip netns exec RED ip addr add dev veth0 11.11.11.2/24;
ip netns exec RED ip link set veth0 up;

# BLUE 컨테이너 네트워크 설정
ip netns exec BLUE ip addr add dev veth1 11.11.11.3/24;
ip netns exec BLUE ip link set veth1 up;
