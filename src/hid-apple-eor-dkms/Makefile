# obj-m := hid-apple-eor.o

# KVERSION := $(shell uname -r)
# KDIR := /lib/modules/$(shell uname -r)/build
# PWD := $(shell pwd)
 
# all:
# 	$(MAKE) -C $(KDIR) M=$(PWD) modules
 
# clean:
# 	$(MAKE) -C $(KDIR) M=$(PWD) clean

obj-m	:= hid-apple-eor.o

MAKEFLAGS += --no-print-directory
KVERSION := $(shell uname -r)
KDIR := /lib/modules/$(KVERSION)/build
PWD := $(shell pwd)

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean

install:
	$(MAKE) -C $(KDIR) M=$(PWD) modules_install
