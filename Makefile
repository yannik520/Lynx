ARCH ?= arm
BOARD ?= armemu
TOOLCHAIN_PREFIX := arm-none-eabi-
CC := $(TOOLCHAIN_PREFIX)gcc
LD := $(TOOLCHAIN_PREFIX)ld
OBJDUMP := $(TOOLCHAIN_PREFIX)objdump
OBJCOPY := $(TOOLCHAIN_PREFIX)objcopy
CPPFILT := $(TOOLCHAIN_PREFIX)c++filt
SIZE := $(TOOLCHAIN_PREFIX)size
NM := $(TOOLCHAIN_PREFIX)nm

CFLAGS := -O2 -g -Iinclude -fno-builtin -finline -W -Wall -Wno-multichar -Wno-unused-parameter -Wno-unused-function
CPPFLAGS := -fno-exceptions -fno-rtti -fno-threadsafe-statics
ASMFLAGS := -DASSEMBLY
LDFLAGS := 
LDFLAGS += -gc-sections


NOECHO ?= @

ALLOBJS := \
	kernel/main.o \
	kernel/task.o \
	kernel/printf.o \
	kernel/malloc.o

include arch/$(ARCH)/Makefile
include arch/$(ARCH)/boot/Makefile
include arch/$(ARCH)/boards/$(BOARD)/Makefile

LINKER_SCRIPT_TEMPLETE := arch/$(ARCH)/boot/build.ld
LINKER_SCRIPT := build.ld

ALL_INCLUDE_FILES := $(wildcard ./include/arch/arm/boards/armemu/*.h)

all: prepare bigeye.bin bigeye.elf bigeye.sym

prepare: prepare_include build.ld

.PHONY: prepare_include build.ld
prepare_include:
	echo $(ALL_INCLUDE_FILES)
	@cp $(wildcard ./include/arch/arm/boards/armemu/*.h) ./include/arch
	@cp $(wildcard ./include/arch/arm/*.h) ./include/arch

build.ld: $(LINKER_SCRIPT_TEMPLETE)
	@sed "s/%MEMBASE%/$(MEMBASE)/;s/%STACKSIZE%/$(STACKSIZE)/" < $< > $@

bigeye.bin: bigeye.elf
	@echo generation image: $@
	$(NOECHO)$(SIZE) $<
	$(NOCOPY)$(OBJCOPY) -O binary $< $@

bigeye.elf: $(ALLOBJS) $(LINKER_SCRIPT)
	@echo linking $@
	$(noecho)$(LD) $(LDFLAGS) -T $(LINKER_SCRIPT) $(ALLOBJS) -o $@
bigeye.sym: bigeye.elf
	@echo generating listing: $@
	$(NOECHO)$(OBJDUMP) -Mreg-names-raw -S $< | $(CPPFILT) > $@

clean:
	echo $(ALLOBJS)
	@rm -rf *.bin *.elf *.sym $(ALLOBJS)