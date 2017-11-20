#!/bin/bash -ex

rm -f *.o
rm -f out_*

nasm -f elf32 -F stabs 02-hello-world.asm
ld -m elf_i386 02-hello-world.o -o out_02-hello-world

nasm -f elf32 -F stabs 03-helloworld-len.asm
ld -m elf_i386 03-helloworld-len.o -o out_03-helloworld-len

nasm -f elf32 -F stabs 04-subroutines.asm
ld -m elf_i386 04-subroutines.o -o out_04-subroutines

rm -f *.o
