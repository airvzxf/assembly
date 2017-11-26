; https://www.csee.umbc.edu/portal/help/nasm/sample_64.shtml#fib_64l.asm

    global _start
    extern printf

    section .data
format: db '%lld', 10, 0

    section .text
_start:
    mov rcx, 46         ; rcx will countdown from xx to 0
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
    ;call printf    ; Does not print every time insted finish the loop.
    pop rcx
    pop rax
    mov rdx, rax        ; save the current number
    mov rax, rbx        ; next number is now current
    add rbx, rdx        ; get the new next number
    dec rcx         ; count down
    jnz print       ; if not done counting, do some more
    call printf     ; print the final result

    pop rbp         ; restore stack
    mov rax, 0      ; normal exit
    mov eax, 1      ; system call: sys_exit
    int 0x80        ; call kernel
    ret
