; nasm -felf64 -o x fib_64l.asm && ld -o out_fib_64l_dynamic_linker x -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2 && rm -f x && ./out_fib_64l_dynamic_linker

; https://www.csee.umbc.edu/portal/help/nasm/sample_64.shtml#fib_64l.asm
    global _start
    extern printf

    section .data
format: db '%lld', 10, 0
title:  db 'fibinachi numbers', 10, 0

    section .text
_start:
    push rbp        ; set up stack
    mov rdi, title      ; arg 1 is a pointer
    mov rax, 0      ; no vector registers in use
    call printf

    mov rcx, 91         ; rcx will countdown from xx to 0
    mov rax, 1      ; rax will hold the current number
    mov rbx, 2      ; rbx will hold the next number
print:
    ;  We need to call printf, but we are using rax, rbx, and rcx.
    ;  printf may destroy rax and rcx so we will save these before
    ;  the call and restore them afterwards.
    push rax        ; 32-bit stack operands are not encodable
    push rcx        ; in 64-bit mode, so we use the "r" names
    mov rdi, format     ; arg 1 is a pointer
    mov rsi, rax        ; arg 2 is the current number
    mov eax, 0      ; no vector registers in use
    call printf
    pop rcx
    pop rax
    mov rdx, rax        ; save the current number
    mov rax, rbx        ; next number is now current
    add rbx, rdx        ; get the new next number
    dec rcx         ; count down
    jnz print       ; if not done counting, do some more

    pop rbp         ; restore stack
    mov rax, 0      ; normal exit
    mov eax, 1      ; system call: sys_exit
    int 0x80        ; call kernel
    ret
