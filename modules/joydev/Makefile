KVERS = $(shell uname -r)

# kernel modules
obj-m := joydev.o
#
EXTRA_CFLAGS=-g -O0 -Wno-vla -Wframe-larger-than=4496

build: kernel_modules

kernel_modules:
	make -C /usr/src/header M=$(CURDIR) modules

clean:
	make -C /usr/src/header M=$(CURDIR) clean
