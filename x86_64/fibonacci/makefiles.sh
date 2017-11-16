#!/bin/bash -ex

rm -f out_*
rm -f x
rm -f *.out

nasm -felf64 -o x fib_64a.asm
ld -o out_fib_64a x -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2
rm -f x

nasm -felf64 -o x fib_64l.asm
ld -o out_fib_64l x -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2
rm -f x

nasm -felf64 -o x fib_64m.asm
ld -o out_fib_64m x -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2
rm -f x

nasm -f elf64 -o x fib_64slow.asm
ld -arch x86_64 x -o out_fib_64slow
rm -f x

#nasm -f elf64 -o x fibo-linux.asm && ld -arch x86 x -o out_fibo_linux_arch_x86_64 && rm -f x

#nasm -f elf64 -o x fibo-linux.asm && ld -s -o out_fibo_linux_s && rm -f x

#~ echo -e "1"
#~ echo "----------------------------------------------------------------------"
#~ nasm -o x -f elf fibo-linux.asm && ld -s -o fibo-linux_1 x && rm -f x
#~ echo -e "2"
#~ echo "----------------------------------------------------------------------"
#~ nasm -o x -f elf fibo-linux.asm && ld -arch x86 -s -o fibo-linux_2 x && rm -f x
#~ echo -e "3"
#~ echo "----------------------------------------------------------------------"
#~ nasm -o x -f elf64 fibo-linux.asm && ld -arch x86 -s -o fibo-linux_3 x && rm -f x
