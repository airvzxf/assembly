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

nasm -f elf32 -g -Fdwarf 12-calculator_addition.asm
ld -m elf_i386 12-calculator_addition.o -o out_12-calculator_addition

nasm -f elf32 -g -Fdwarf 13-calculator_subtraction.asm
ld -m elf_i386 13-calculator_subtraction.o -o out_13-calculator_subtraction

nasm -f elf32 -g -Fdwarf 14-calculator_multiplication.asm
ld -m elf_i386 14-calculator_multiplication.o -o out_14-calculator_multiplication

nasm -f elf32 -g -Fdwarf 15-calculator_division.asm
ld -m elf_i386 15-calculator_division.o -o out_15-calculator_division

nasm -f elf32 -g -Fdwarf 16-calculator_atoi.asm
ld -m elf_i386 16-calculator_atoi.o -o out_16-calculator_atoi

nasm -f elf32 -g -Fdwarf 17-namespace.asm
ld -m elf_i386 17-namespace.o -o out_17-namespace

nasm -f elf32 -g -Fdwarf 18-fizz_buzz.asm
ld -m elf_i386 18-fizz_buzz.o -o out_18-fizz_buzz

nasm -f elf32 -g -Fdwarf 19-execute_command.asm
ld -m elf_i386 19-execute_command.o -o out_19-execute_command

nasm -f elf32 -g -Fdwarf 20-process_forking.asm
ld -m elf_i386 20-process_forking.o -o out_20-process_forking

nasm -f elf32 -g -Fdwarf 21-telling_the_time.asm
ld -m elf_i386 21-telling_the_time.o -o out_21-telling_the_time

nasm -f elf32 -g -Fdwarf 22-file_handling_create.asm
ld -m elf_i386 22-file_handling_create.o -o out_22-file_handling_create

nasm -f elf32 -g -Fdwarf 23-file_handling_write.asm
ld -m elf_i386 23-file_handling_write.o -o out_23-file_handling_write

nasm -f elf32 -g -Fdwarf 24-file_handling_open.asm
ld -m elf_i386 24-file_handling_open.o -o out_24-file_handling_open

nasm -f elf32 -g -Fdwarf 25-file_handling_read.asm
ld -m elf_i386 25-file_handling_read.o -o out_25-file_handling_read

nasm -f elf32 -g -Fdwarf 26-file_handling_close.asm
ld -m elf_i386 26-file_handling_close.o -o out_26-file_handling_close

nasm -f elf32 -g -Fdwarf 27-file_handling_seek.asm
ld -m elf_i386 27-file_handling_seek.o -o out_27-file_handling_seek

nasm -f elf32 -g -Fdwarf 28-file_handling_delete.asm
ld -m elf_i386 28-file_handling_delete.o -o out_28-file_handling_delete

nasm -f elf32 -g -Fdwarf 29_35-sockets.asm
ld -m elf_i386 29_35-sockets.o -o out_29_35-sockets

nasm -f elf32 -g -Fdwarf 36-download_a_webpage.asm
ld -m elf_i386 36-download_a_webpage.o -o out_36-download_a_webpage

rm -f *.o
