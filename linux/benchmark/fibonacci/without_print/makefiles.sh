#!/bin/bash -ex

rm -f out_*
rm -f x
rm -f *.out

nasm -f elf64 -g -Fdwarf fib_x64_nasm_a.asm -o x
ld --oformat elf64-x86-64 x -o out_fib_x64_nasm_a
rm -f x

nasm -f elf64 -g -Fdwarf fib_x64_nasm_l.asm -o x
ld --oformat elf64-x86-64 x -o out_fib_x64_nasm_l
rm -f x

nasm -f elf64 -g -Fdwarf fib_x64_nasm_m.asm -o x
ld --oformat elf64-x86-64 x -o out_fib_x64_nasm_m
rm -f x

nasm -f elf64 -g -Fdwarf fib_x64_nasm_my_solution.asm -o x
ld --oformat elf64-x86-64 x -o out_fib_x64_nasm_my_solution
rm -f x

nasm -f elf32 -g -Fdwarf fib_i386_nasm_my_solution.asm -o x
ld -m elf_i386 x -o out_fib_i386_nasm_my_solution
rm -f x

fasm fib_x64_fasm_my_solution.asm out_fib_x64_fasm_my_solution

gcc -m64 fib_x64_c.c -o out_fib_x64_c
