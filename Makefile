
AS = aarch64-linux-gnu-as
CC = aarch64-linux-gnu-gcc
LD = aarch64-linux-gnu-ld

SRC = src

BOOT = boot/boot.s
KERNEL = kernel.c

OUTPUT = bin

all: build

build:
	$(AS) $(SRC)/$(BOOT) -o boot.o
	$(CC) -ffreestanding -c $(SRC)/$(KERNEL) -o kernel.o
	$(LD) -nostdlib -T linker.ld boot.o kernel.o -o kernel.elf 

run:
	qemu-system-aarch64 -machine virt -cpu cortex-a57 -kernel kernel.elf -nographic
