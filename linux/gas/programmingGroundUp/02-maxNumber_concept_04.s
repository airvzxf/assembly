# Modify the maximum program to use an ending address rather than the number 0 to know when to stop.
# Use `gdb` to debug this program step by step.

    .section .data
        data_items:
            .long 3, 67, 34, 120, 45, 75, 54, 250, 44, 33, 22, 11, 255
    .section .text
    .globl _start

_start:
    # Cleaning ebx and edi.
    xorl    %ebx, %ebx
    xorl    %edi, %edi

    # eax is the current value.
    # ebx is the maximum value.
    # ecx is the current address of the data_items.
    # edx is the last address of the data_items.
    # edi is the index for the data_items.
    movl    $data_items + 13 * 4, %edx
next_number:
    lea     data_items(, %edi, 4), %ecx
    cmpl    %ecx, %edx
    jz      exit
    movl    data_items(, %edi, 4), %eax
    incl    %edi
    cmpl    %ebx, %eax
    jl      next_number
    movl    %eax, %ebx
    jmp     next_number

# eax is the exit value for the exit system call.
exit:
    movl    $1, %eax
    # %ebx has the maximum number, returning in the exit system call.
    int     $0x80
