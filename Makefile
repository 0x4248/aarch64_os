# Aarch64 OS
# Github: https://github.com/0x4248/aarch64_os
# By: 0x4248

AS = as
CC = gcc
LD = ld

SRC = src

BOOT = boot/boot.s
KERNEL = kernel/kernel.c
INCLUDE = -I include

QEMU = qemu-system-aarch64
QEMU_FLAGS = -machine virt -cpu cortex-a57 -kernel $(OUTPUT) -nographic

OUTPUT = kernel.elf

all: build

build:
	$(AS) $(BOOT) -o boot.o
	$(CC) -ffreestanding -c kernel/power.c $(INCLUDE) -o power.o
	$(CC) -ffreestanding -c $(KERNEL) $(INCLUDE) -o kernel.o
	$(LD) -nostdlib -T linker.ld boot.o kernel.o power.o -o $(OUTPUT)
	rm boot.o kernel.o

run:
	$(QEMU) $(QEMU_FLAGS)
