; Hello World Program (Count to 10 itoa)

%include        '11-functions.asm'

SECTION .text
global  _start

_start:

    mov     ecx, 0

nextNumber:
    inc     ecx
    mov     eax, ecx
    call    iprintLF        ; NOTE call our new integer printing function (itoa)
    cmp     ecx, 10
    jne     nextNumber

    call    quit
