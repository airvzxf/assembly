; This is my solution (Israel Roldan)

%include 'fib_i386_nasm_my_functions.asm'

SECTION .text
    global  _start

_start:
    mov     eax, 0      ; Current number
    mov     ebx, 1      ; Next number
    mov     ecx, 48d    ; Number of iterations
    mov     edx, eax    ; Fibonacci number

Infinite:
    add     edx, eax    ; Fibonacci = lastn number + current
    mov     eax, ebx    ; Current = Next number (old number)
    mov     ebx, edx    ; Next = fibonacci number

    dec     ecx         ; Reduce the counter by one
    jz      Finished
    jmp     Infinite

Finished:
    push    eax         ; Save the value for EAX
    mov     eax, edx    ; EAX = EDX
    call    iprintLF    ; Print the number
    pop     eax         ; Restore the value for EAX

    mov     ebx, 0
    mov     eax, 1
    int     80h
