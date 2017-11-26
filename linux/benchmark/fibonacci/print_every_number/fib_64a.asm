; http://koblents.com/Ches/Original-Work/Month-Aug-2013/1-X86-64-ASM-Fibonacci/

section .text           ; program test
    global  _start      ; _start is default; export for linker
    extern  printf

do_fib:             ; do_fib sub/func
    push    r14     ; store r14
    push    r15     ; store r15
    push    rax     ; store rax
    mov r14, r10    ; copy r10 value to r14 for printing
    mov r15, fib    ; copy fib address to r15 for printing
    call    print_int   ; print fib str, r10 as param
    mov rax, r10    ; copy r10 to temp
    mov r10, r11    ; set r10 to r11
    add r11, rax    ; new r11 set to old r11 + old r10
    pop rax     ; restore rax
    pop r15     ; restore r15
    pop r14     ; restore r14
    ret         ; finished with iteration

for_0_r15:
    push    rcx     ; store rcx
    mov rcx, 0      ; set rcx counter to 0

for_loop:
    call    r13     ; call function pointer
    inc rcx     ; increment counter
    cmp rcx, r15    ; compare counter to target
    jne for_loop    ; if not equal to target, continue

    pop rcx     ; restore rcx
    ret         ; finished for loop

_start:             ; _start (default start point) sub/func
    mov r10, 1      ; first initial value: 1
    mov r11, 1      ; second initial value: 1

    mov r13, do_fib ; execute do_fib in loop
    mov r15, 47     ; execute xx times
    call    for_0_r15   ; call for loop

                ; next section is exit routine
    mov ebx, 0      ; exit code: 0 (success)
    mov eax, 1      ; system call: sys_exit
    int 0x80        ; call kernel

print_int:
    push    rax     ; store all the registers (overkill? yes)
    push    rbx
    push    rcx
    push    rdx
    push    rsi
    push    rdi
    push    rbp
    push    rsp
    push    r8
    push    r9
    push    r10
    push    r11
    push    r12
    push    r13
    mov rsi, r14    ; value stored in r14
    mov rdi, r15    ; string stored in r15
    mov eax, 0      ; no non-int args
    call printf     ; call printf
    pop r13         ; pop all the registers
    pop r12
    pop r11
    pop r10
    pop r9
    pop r8
    pop rsp
    pop rbp
    pop rdi
    pop rsi
    pop rdx
    pop rcx
    pop rbx
    pop rax
    ret


section .data           ; program data
fib db  "%lld", 10, 0    ; fib string
