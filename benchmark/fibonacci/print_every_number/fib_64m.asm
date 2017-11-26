; https://www.csee.umbc.edu/portal/help/nasm/sample_64.shtml#fib_64m.asm

    global _start
    extern printf

    section .bss
d:  resq    1       ; temp  unused, kept in register rdx

    section .data
c:  dq  46      ; loop counter
a:  dq  1       ; current number, becomes next
b:  dq  2       ; next number, becomes sum a+b
format: db '%lld', 10, 0

    section .text
_start:

print:
    ;  We need to call printf, but we are using rax, rbx, and rcx.
    mov rdi, format     ; arg 1 is a pointer
    mov rsi,[a]         ; arg 2 is the current number
    mov rax, 0      ; no vector registers in use
    ;call printf    ; Does not print every time insted finish the loop.

    mov rdx,[a]         ; save the current number, in register
    mov rbx,[b]         ;
    mov [a],rbx     ; next number is now current, in ram
    add rbx, rdx        ; get the new next number
    mov [b],rbx     ; store in ram
    mov rcx,[c]     ; get loop count
    dec rcx         ; count down
    mov [c],rcx     ; save in ram
    jnz print       ; if not done counting, do some more
    call printf     ; print the final result

    pop rbp         ; restore stack
    mov rax, 0      ; normal exit
    mov eax, 1      ; system call: sys_exit
    int 0x80        ; call kernel
    ret         ; return to operating system
