# Finding a Maximum Value.

    .section .data
        data_items:
            .int 3, 67, 34, 120, 45, 75, 54, 250, 44, 33, 22, 11, 0
    .section .text
    .globl _start

_start:
    # Cleaning ebx and edi
    xorl    %ebx, %ebx
    xorl    %edi, %edi

# eax is the current value.
# ebx is the maximum value.
# edi is the index for the data_items.
next_number:
    movl    data_items(, %edi, 4), %eax
    cmpl    $0, %eax
    jz      exit
    incl    %edi
    cmpl    %ebx, %eax
    jl      next_number
    movl    %eax, %ebx
    jmp     next_number

# eax is the exit value for the exit system call.
exit:
    movl    $1, %eax
    # %ebx has the maximum number, returning in the exit system call.
