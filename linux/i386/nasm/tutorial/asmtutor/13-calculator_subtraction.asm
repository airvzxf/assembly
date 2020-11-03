; Calculator - subtraction
; https://asmtutor.com/

%include        '11-functions.asm'

SECTION .text
global  _start
 
_start:
 
    mov     eax, 90     ; move our first number into eax
    mov     ebx, 9      ; move our second number into ebx
    sub     eax, ebx    ; subtract ebx from eax
    call    iprintLF    ; call our integer print with linefeed function
 
    call    quit
