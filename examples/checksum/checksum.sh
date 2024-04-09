#!/bin/sh
as --32 -gstabs -o checksum.o checksum.S
ld -m elf_i386 -dynamic-linker /lib32/ld-linux.so.2 -o checksum -lc checksum.o

# C program
gcc -m32 -g -O2 -o checksum-c checksum.c
