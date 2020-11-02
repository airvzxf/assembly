#!/bin/bash -ex

rm -f *.o
rm -f out_*

nasm -f elf32 -g -Fdwarf 01-hello_world.asm
ld -m elf_i386 01-hello_world.o -o out_01-hello_world

nasm -f elf32 -g -Fdwarf 02-exit.asm
ld -m elf_i386 02-exit.o -o out_02-exit

nasm -f elf32 -g -Fdwarf 03-string_length.asm
ld -m elf_i386 03-string_length.o -o out_03-string_length

nasm -f elf32 -g -Fdwarf 04-subroutines.asm
ld -m elf_i386 04-subroutines.o -o out_04-subroutines

nasm -f elf32 -g -Fdwarf 05-include_files.asm
ld -m elf_i386 05-include_files.o -o out_05-include_files

nasm -f elf32 -g -Fdwarf 06-null_terminating_bytes.asm
ld -m elf_i386 06-null_terminating_bytes.o -o out_06-null_terminating_bytes

nasm -f elf32 -g -Fdwarf 07-linefeeds.asm
ld -m elf_i386 07-linefeeds.o -o out_07-linefeeds

nasm -f elf32 -g -Fdwarf 08-passing_arguments.asm
ld -m elf_i386 08-passing_arguments.o -o out_08-passing_arguments

nasm -f elf32 -g -Fdwarf 09-user_input.asm
ld -m elf_i386 09-user_input.o -o out_09-user_input

nasm -f elf32 -g -Fdwarf 10-count_to_10.asm
ld -m elf_i386 10-count_to_10.o -o out_10-count_to_10

nasm -f elf32 -g -Fdwarf 11-count_to_10_itoa.asm
ld -m elf_i386 11-count_to_10_itoa.o -o out_11-count_to_10_itoa

rm -f *.o
