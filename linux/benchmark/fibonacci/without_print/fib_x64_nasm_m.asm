; https://www.csee.umbc.edu/portal/help/nasm/sample_64.shtml#fib_64m.asm

    global _start

    section .bss
d:  resq    1       ; temp  unused, kept in register rdx

    section .data
c:  dq  46      ; loop counter
a:  dq  1       ; current number, becomes next
b:  dq  2       ; next number, becomes sum a+b

    section .text
_start:

print:
    mov rdx,[a]         ; save the current number, in register
    mov rbx,[b]         ;
    mov [a],rbx     ; next number is now current, in ram
    add rbx, rdx        ; get the new next number
    mov [b],rbx     ; store in ram
    mov rcx,[c]     ; get loop count
    dec rcx         ; count down
    mov [c],rcx     ; save in ram
    jnz print       ; if not done counting, do some more

    pop rbp         ; restore stack
    mov rax, 0      ; normal exit
    mov eax, 1      ; system call: sys_exit
    int 0x80        ; call kernel
    ret         ; return to operating system
