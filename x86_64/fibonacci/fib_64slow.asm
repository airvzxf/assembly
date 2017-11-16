; nasm -f elf64 -o x fib.asm && ld -arch x86_64 x -o out_fib_arch_x86_64 && rm -f x  && ./out_fib_arch_x86_64

; http://seyferseed.ru/en/life-en/recursive-fibonacci-solution-different-programming-languages.html#sthash.xPHRjius.Zavnit6o.dpbs
DEFAULT rel

section .text
GLOBAL _start
_start:

    push qword 24               ; -> 1346269
    call fibonacci
    add rsp, 8

    call write_eax

    mov edi, 0                  ; return 0 (success)
    mov eax, 60                 ; sys_exit
    syscall

fibonacci:
    push rbp
    push rbx

    mov rbp, rsp
    add rbp, 24
    mov ebx, [rbp]

    cmp     EBX,1       ; Check for base case
    jle     base        ; It is base if (n <= 1)

    lea ecx,[ebx-1]
    push rcx
    call    fibonacci   ; Calculate fibonacci for (EBX - 1)
    pop rcx

    push rax
    lea ecx,[ebx-2]
    push rcx
    call    fibonacci   ; Calculate fibonacci for (EBX - 2)
    pop rcx
    pop rcx
    add eax,ecx         ; eax = fibonacci(N-2) + fibonacci(N-1)

    jmp end
    base:               ; Base case
    mov EAX,1           ; The result would be 1

    end:
    pop rbx
    pop rbp
    ret

write_eax:
    mov rsi, rsp                ; Keyword: Red Zone (https://en.wikipedia.org/wiki/Red_zone_%28computing%29)

    sub rsi, 1
    mov byte [rsi], `\n`        ; Line feed

    mov ecx, 10                 ; Divisor

    .L1:
    xor edx, edx
    div ecx                     ; EDX:EAX / ECX -> EAX, remainder EDX
    or dl, 0x30                 ; Convert remainder to ASCII
    sub rsi, 1
    mov [rsi], dl               ; Store remainder reversed on the stack
    test eax, eax
    jne .L1

    mov rdx, rsp                ; RDX: message string length
    sub rdx, rsi
    mov rdi, 1                  ; RDI=1: stdout
    mov eax, 1                  ; sys_write
    syscall                     ; /usr/include/x86_64-linux-gnu/asm/unistd_64.h

    ret
