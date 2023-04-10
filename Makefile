
AS = aarch64-linux-gnu-as
CC = aarch64-linux-gnu-gcc
LD = aarch64-linux-gnu-ld

SRC = src

BOOT = boot/boot.s
KERNEL = kernel.c

QEMU = qemu-system-aarch64
QEMU_FLAGS = -machine virt -cpu cortex-a57 -kernel $(OUTPUT) -nographic

OUTPUT = kernel.elf

all: build

build:
	$(AS) $(SRC)/$(BOOT) -o boot.o
	$(CC) -ffreestanding -c $(SRC)/$(KERNEL) -o kernel.o
	$(LD) -nostdlib -T linker.ld boot.o kernel.o -o $(OUTPUT)
	rm boot.o kernel.o

run:
	$(QEMU) $(QEMU_FLAGS)