openwrt cc(15) compiler image for arm64

test on ubuntu 20.04

```shell
$ make
$ [sudo] docker run -v $(OPENWRT_DIR):/home/user -it cc-compiler /bin/bash 
$ ./scripts/feeds update -a
$ ./scripts/feed install -a -f
$ make menuconfig
$ make V=s

``` 
