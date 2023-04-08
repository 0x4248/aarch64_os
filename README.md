# AARCH64 OS

This is a simple OS for the aarch64 architecture. It is written in C and assembly.

Most of the help for this project came from [OS Dev](https://wiki.osdev.org/).

## Building

To build the OS, you need to have the following installed:
- [aarch64-linux-gnu-gcc](https://packages.ubuntu.com/focal/aarch64-linux-gnu-gcc)
- [aarch64-linux-gnu-binutils](https://packages.ubuntu.com/focal/aarch64-linux-gnu-binutils)
- [GNU Make](https://www.gnu.org/software/make/)
- [QEMU](https://www.qemu.org/)

To build the OS, run `make` in the root directory of the project.

## Running

To run the project in qemu run `make run`. This will run the OS in qemu
