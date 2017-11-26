#!/bin/bash -ex

rm -f out_*
rm -f x
rm -f *.out

nasm -f elf64 -g -Fdwarf fib_64a.asm -o x
ld x -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2 -o out_fib_64a
rm -f x

nasm -f elf64 -g -Fdwarf fib_64l.asm -o x
ld x -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2 -o out_fib_64l
rm -f x

nasm -f elf64 -g -Fdwarf fib_64m.asm -o x
ld x -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2 -o out_fib_64m
rm -f x

nasm -f elf64 -g -Fdwarf fib_64slow.asm -o x
ld x -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2 -o out_fib_64slow
rm -f x

nasm -f elf64 -g -Fdwarf fib_64slow.asm -o x
ld -arch x86_64 x -o out_fib_64slow_x86_64
rm -f x

nasm -f elf32 -g -Fdwarf fib_my_solution.asm -o x
ld -m elf_i386 x -o out_fib_my_solution
rm -f x

fasm fib_F64a.asm out_fib_F64a

# --------------------------------------------------------------------
# TODO's
# --------------------------------------------------------------------

# TODO: #1 - Create the out_fib_64a version without printf.
# nasm -f elf64 -g -Fdwarf fib_64a_without_printf.asm -o x
# ld -m elf_x86_64 x -o out_fib_64a_without_printf

# TODO: #2 - Fixed the FASM version of out_fib_64a
# fasm fib_F64b.asm out_fib_F64b

# TODO: #3 - Fixed the ASM fib_linux.asm.
