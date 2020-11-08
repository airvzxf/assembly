# Modify the first program to return the value 3.
# Use `gdb` to debug this program step by step.

    .section .data
        data_items:
            .long 3, 67, 34, 120, 45, 75, 54, 250, 44, 33, 22, 11, 0
    .section .text
    .globl _start

_start:
    # Cleaning edi and set the ecx counter to 3
    xorl    %edi, %edi
    movl    $3, %ecx

# edi is the index for the data_items.
# ecx decrement until zero and exit.
next_number:
    movl    data_items(, %edi, 4), %ebx
    incl    %edi
    decl    %ecx
    jecxz   exit
    jmp     next_number

# eax is the exit value for the exit system call.
exit:
    movl    $1, %eax
    # %ebx has the maximum number, returning in the exit system call.
    int     $0x80
