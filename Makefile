PS2DEV  ?= /usr/local/ps2dev
CROSS   := $(PS2DEV)/ee/bin/mips64r5900el-ps2-elf-
CC      := $(CROSS)gcc
OBJCOPY := $(CROSS)objcopy
OBJDUMP := $(CROSS)objdump

CFLAGS := -Iinclude -Iasm -O2 -G0 -fno-PIC -mno-abicalls \
          -mabi=eabi -mgp64 -march=r5900 \
          -DINCLUDE_ASM_USE_MACRO_INC=1

SRCS := $(wildcard src/*.c)
OBJS := $(patsubst src/%.c,build/%.o,$(SRCS))

.PHONY: all clean
all: $(OBJS)

build/%.o: src/%.c
	@mkdir -p build
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf build
