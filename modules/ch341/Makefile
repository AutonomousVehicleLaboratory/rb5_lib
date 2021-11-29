KVERS = $(shell uname -r)

# kernel modules
obj-m := ch341.o

EXTRA_CFLAGS=-g -O0 -Wno-vla

build: kernel_modules

kernel_modules:
	make -C /usr/src/header M=$(CURDIR) modules

clean:
	make -C /usr/src/header M=$(CURDIR) clean
