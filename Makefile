# SPDX-License-Identifier: GPL-2.0-only

KERNEL ?= /lib/modules/$(shell uname -r)/build

obj-m := nct6683.o

.PHONY: modules clean

modules:
	@$(MAKE) -C $(KERNEL) M=$(CURDIR) modules

clean:
	@$(MAKE) -C $(KERNEL) M=$(CURDIR) clean