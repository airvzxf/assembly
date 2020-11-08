# Modify the maximum program to find the minimum instead.
# Use `gdb` to debug this program step by step.

    .section .data
        data_items:
            .long 3, 67, 34, 120, 45, 75, 54, 250, 44, 33, 22, 11, 0
    .section .text
    .globl _start

_start:
    # Cleaning edi and set the first value from data_items to ebx.
    xorl    data_items, %ebx
    xorl    %edi, %edi

# eax is the current value.
# ebx is the maximum value.
# edi is the index for the data_items.
next_number:
    incl    %edi
    movl    data_items(, %edi, 4), %eax
    cmpl    $0, %eax
    jz      exit
    cmpl    %ebx, %eax
    jg      next_number
    movl    %eax, %ebx
    jmp     next_number

# eax is the exit value for the exit system call.
exit:
    movl    $1, %eax
    # %ebx has the maximum number, returning in the exit system call.
    int     $0x80
