; Created for me based in fib_64a.asm

format ELF64 executable 3

segment readable executable

entry start    ; in the original file this was located before the segment. You should put it here instead

do_fib:             ; do_fib sub/func
    push    r14     ; store r14
    push    r15     ; store r15
    push    rax     ; store rax
    mov r14, r10    ; copy r10 value to r14 for printing
    mov r15, fib    ; copy fib address to r15 for printing
    call print_int  ; print fib str, r10 as param
    mov rax, r10    ; copy r10 to temp
    mov r10, r11    ; set r10 to r11
    add r11, rax    ; new r11 set to old r11 + old r10
    pop rax         ; restore rax
    pop r15         ; restore r15
    pop r14         ; restore r14
    ret             ; finished with iteration

for_0_r15:
    push    rcx     ; store rcx
    mov rcx, 0      ; set rcx counter to 0

for_loop:
    call    r13     ; call function pointer
    inc rcx         ; increment counter
    cmp rcx, r15    ; compare counter to target
    jne for_loop    ; if not equal to target, continue
    pop rcx         ; restore rcx
    ret             ; finished for loop

start:
    mov r10, 1      ; first initial value: 1
    mov r11, 1      ; second initial value: 1

    mov r13, do_fib ; execute do_fib in loop
    mov r15, 92     ; execute xx times
    call    for_0_r15   ; call for loop
    call    write

    ;~ mov ecx, 1          ; stores 1 in rcx
    ;~ add edx, ecx        ; stores ecx in edx
    ;~ add edx, 30h        ; gets the ascii value in edx
    ;~ mov ecx, edx        ; ascii value is now in ecx
    ;~ jmp write           ; jumps to write
                    ; next section is exit routine
    mov ebx, 0      ; exit code: 0 (success)
    mov eax, 1      ; system call: sys_exit
    int 0x80        ; call kernel

write:
	mov edx,13
	mov ecx,msg
	mov ebx,0x1    ;select STDOUT stream
	mov eax,0x4    ;select SYS_WRITE call
	int 0x80       ;invoke SYS_WRITE

    mov ecx, 1          ; stores 1 in rcx
    add edx, ecx        ; stores ecx in edx
    add edx, 30h        ; gets the ascii value in edx
    mov ecx, edx        ; ascii value is now in ecx
    mov eax, ecx        ; moves ecx to eax for writing
	mov ebx,0x1    ;select STDOUT stream
	mov eax,0x4    ;select SYS_WRITE call
	int 0x80       ;invoke SYS_WRITE

	mov edx,13
	mov ecx,msg
	mov ebx,0x1    ;select STDOUT stream
	mov eax,0x4    ;select SYS_WRITE call
	int 0x80       ;invoke SYS_WRITE


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
    ;call    printf      ; call printf

	;~ mov edx,13
	;~ mov ecx,fib
	;~ mov ebx,0x1    ;select STDOUT stream
	;~ mov eax,0x4    ;select SYS_WRITE call
	;~ int 0x80       ;invoke SYS_WRITE

    ;~ mov     eax, 4
    ;~ mov     ebx, 1
    ;~ mov     ecx, fib
    ;~ mov     edx, 5
    ;~ int     0x80

    pop r13     ; pop all the registers
    pop r12
    ;call    printf      ; call printf
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


segment readable writeable

msg     db      'Hello World!', 0Ah     ; assign msg variable with your message string
fib db  "%lld", 10, 0    ; fib string
