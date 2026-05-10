
### chroot
* 디렉토리 격리가 안된다.
* 네트워크 격리가 안된다.

### pivot_root
* 호스트와 루트를 변경해서 처리한다.
* 문제는 호스트에 영향을 준다 
* 마운트 네임스페이스와 같이 활용한다.

### 마운트 네임스페이스 (unshare --mount)
* 마운트 항목을 부모와 공유하지 않는다.

* https://www.youtube.com/watch?v=mSD88FuST80
* https://github.com/sam0kim/container-internal
