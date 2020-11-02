; NULL terminating bytes
; https://asmtutor.com/

%include        '05-functions.asm'

SECTION .data
msg1    db      'Hello, brave new world!', 0Ah, 0h          ; NOTE the null terminating byte
msg2    db      'This is how we recycle in NASM.', 0Ah, 0h  ; NOTE the null terminating byte

SECTION .text
global  _start

_start:

    mov     eax, msg1
    call    sprint

    mov     eax, msg2
    call    sprint

    call    quit
