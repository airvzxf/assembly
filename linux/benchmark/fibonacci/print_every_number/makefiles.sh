#!/bin/bash -ex

rm -f out_*
rm -f x
rm -f *.out

nasm -f elf64 -g -Fdwarf fib_x64_nasm_a.asm -o x
ld x -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2 -o out_fib_x64_nasm_a
rm -f x

nasm -f elf64 -g -Fdwarf fib_x64_nasm_l.asm -o x
ld x -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2 -o out_fib_x64_nasm_l
rm -f x

nasm -f elf64 -g -Fdwarf fib_x64_nasm_m.asm -o x
ld x -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2 -o out_fib_x64_nasm_m
rm -f x

nasm -f elf32 -g -Fdwarf fib_i386_nasm_my_solution.asm -o x
ld -m elf_i386 x -o out_fib_i386_nasm_my_solution
rm -f x

nasm -f elf64 -g -Fdwarf fib_x64_nasm_slow.asm -o x
ld x -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2 -o out_fib_x64_nasm_slow
rm -f x

nasm -f elf64 -g -Fdwarf fib_x64_nasm_slow.asm -o x
ld -arch x86_64 x -o out_fib_x64_nasm_slow_x86_64
rm -f x

fasm fib_x64_fasm_a.asm out_fib_x64_fasm_a

# --------------------------------------------------------------------
# TODO's
# --------------------------------------------------------------------

# TODO: #1 - Create my solution for version 64-bits.

# TODO: #2 - Create my solution with FASM.

# TODO: #3 - Create the C version with different optimizations.

# TODO: #4 - Create README.md with the results.
