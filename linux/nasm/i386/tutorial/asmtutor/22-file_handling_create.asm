; File Handling - Create
; https://asmtutor.com/

%include        '17-functions.asm'

SECTION .data
filename db 'readme.txt', 0x0    ; the filename to create

SECTION .text
global  _start

_start:

    mov     ecx, 0o0777         ; set all permissions to read, write, execute
    mov     ebx, filename       ; filename we will create
    mov     eax, 8              ; invoke SYS_CREAT (kernel opcode 8)
    int     0x80                ; call the kernel

    call    quit                ; call our quit function
