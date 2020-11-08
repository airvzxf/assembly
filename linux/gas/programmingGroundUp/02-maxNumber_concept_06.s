# What would the instruction movl _start, %eax do? Be specific, based on your knowledge of both addressing modes and the meaning of_start. How would this differ from the instruction movl $_start, %eax.
# Use `gdb` to debug this program step by step.

    .section .data
    .section .text
    .globl _start

_start:
    movl    _start, %eax
    movl     $_start, %ebx

# eax is the exit value for the exit system call.
exit:
    movl    $1, %eax
    movl    $0, %ebx
    int     $0x80
