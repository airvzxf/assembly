; File Handling - Delete
; https://asmtutor.com/

%include        '17-functions.asm'

SECTION .data
filename  db 'readme.txt', 0x0    ; the filename to create

SECTION .text
global  _start

_start:

    mov     ebx, filename       ; filename we will delete
    mov     eax, 10             ; invoke SYS_UNLINK (kernel opcode 10)
    int     0x80                ; call the kernel

    call    quit                ; call our quit function
