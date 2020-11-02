;------------------------------------------
; int slen(String message)
; String length calculation function
slen:
    push    ebx
    mov     ebx, eax

nextchar:
    cmp     byte [eax], 0
    jz      finished
    inc     eax
    jmp     nextchar

finished:
    sub     eax, ebx
    pop     ebx
    ret


;------------------------------------------
; void sprint(String message)
; String printing function
sprint:
    push    edx
    push    ecx
    push    ebx
    push    eax
    call    slen

    mov     edx, eax
    pop     eax

    mov     ecx, eax
    mov     ebx, 1
    mov     eax, 4
    int     80h

    pop     ebx
    pop     ecx
    pop     edx
    ret


;------------------------------------------
; void sprintLF(String message)
; String printing with line feed function
sprintLF:
    call    sprint

    push    eax         ; push eax onto the stack to preserve it while we use the eax register in this function
    push    ebx
    push    ecx
    push    edx

    mov     edx, 1      ; number of bytes to write - one for each letter plus 0Ah (line feed character)
    mov     ecx, 0Ah    ; move 0Ah into eax - 0Ah is the ascii character for a linefeed
    push    ecx         ; push the linefeed onto the stack so we can get the address
    mov     ecx, esp    ; move the address of the current stack pointer into eax for sprint
    mov     ebx, 1
    mov     eax, 4
    int     80h
    pop     ecx         ; remove our linefeed character from the stack

    pop     edx
    pop     ecx
    pop     ebx
    pop     eax         ; restore the original value of eax before our function was called
    ret                 ; return to our program


;------------------------------------------
; void exit()
; Exit program and restore resources
quit:
    mov     ebx, 0
    mov     eax, 1
    int     80h
    ret
