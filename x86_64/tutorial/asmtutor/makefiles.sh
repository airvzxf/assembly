#!/bin/bash -ex

rm -f *.o
rm -f out_*

nasm -f elf32 -g -Fdwarf 02-helloworld.asm
ld -m elf_i386 02-helloworld.o -o out_02-helloworld

nasm -f elf32 -g -Fdwarf 03-helloworld-len.asm
ld -m elf_i386 03-helloworld-len.o -o out_03-helloworld-len

nasm -f elf32 -g -Fdwarf 04-subroutines.asm
ld -m elf_i386 04-subroutines.o -o out_04-subroutines

nasm -f elf32 -g -Fdwarf 05-helloworld-inc.asm
ld -m elf_i386 05-helloworld-inc.o -o out_05-helloworld-inc

nasm -f elf32 -g -Fdwarf 06-helloworld-inc.asm
ld -m elf_i386 06-helloworld-inc.o -o out_06-helloworld-inc

nasm -f elf32 -g -Fdwarf 07-helloworld-lf.asm
ld -m elf_i386 07-helloworld-lf.o -o out_07-helloworld-lf

rm -f *.o
