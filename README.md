# container-without-docker

## 컨테이너
* 기능: 올인원 패키징 + 격리 + 자원보장
* 환경: 리눅스(컨테이너 리눅스 기술) + 런타임(컨테이너 관리 도구)
  * 윈도우 및 맥 사용하는 경우 백그라운드에서 리눅스 버추얼 머신 동작

## chroot
* 악의적인 사용자에게 사용을 제한하기 위한 목적으로 등장
* Docker 이미지 파일 시스템 추출 및 chroot 접근 가능
* 문제점 
  1. 네트워크 환경 등 격리 불가
  2. 격리된 환경에서 탈옥 가능 (escape_chroot.c)

## pivot_root
* 최상위 루트 파일 시스템 피봇
* 호스트에 영향을 주는 문제 존재
* 호스트에 영향을 주는 문제로 마운트 네임스페이스를 통해 활용

## mount namespace
* 파일시스템 마운트 격리
* 해당 마운트 네임스페이스에서 마운트 진행시 루트 마운트 네임스페이스에서 접근 불가

## UTS namespace
* 호스트명과 도메인 이름을 독립적으로 격리
* 별도의 호스트명 설정 가능

## IPC namespace
* 프로세스 간 데이터 공유 공간을 격리
  * 공유 메모리, 메시지 큐, 세마포어 등

## PID namespace
* PID 넘버스페이스 격리
* 부모-자식 네임스페이스 중첩 구조
* PID 1 역할에 init 프로세스 생성 (시그널 처리 및 좀비, 고아프로세스 처리 별도 구현 필요)

## NETWORK namespace
* 네트워크 격리 및 네트워크 가상화, 가상 인터페이스 활용

## USER namespace
* UID/GID 넘버스페이스 격리
* 부모-자식 네임스페이스의 중첩 구조
* 컨테이너에서 루트 권한 문제 해결
* 도커의 경우 기본 설정 USER namespace 미사용 (보안 주의 필요)

## Cgroups
* 프로세스가 사용하는 리소스 통제
* 자원 할당과 제어를 파일 시스템으로 제공 (/sys/fs/cgroup)

## overlay mount
* 여러 파일 시스템 레이어를 하나의 파일시스템처럼 합쳐서 사용하는 기술
* 컨테이너 이미지 생성시 파일 시스템 중복 문제 해결 목적
* 구조
  * Merged View: Upper + Lower를 합쳐 사용자에게 보여주는 최종 파일시스템
  * Upper Dir: 파일 시스템 변경 사항이 저장되는 쓰기 가능 레이어
  * Lower Dir(1~N): 읽기 전용 파일 시스템 레이어

### 출처
* [유투브 - 이게 돼요? 도커 없이 컨테이너 만들기 / if(kakao)2022](https://www.youtube.com/watch?v=mSD88FuST80)
* [깃허브 - sam0kim/container-internal](https://github.com/sam0kim/container-internal)
