; File Handling - Open
; https://asmtutor.com/

%include        '17-functions.asm'

SECTION .data
filename db 'readme.txt', 0x0    ; the filename to create
contents db 'Hello world!', 0x0  ; the contents to write

SECTION .text
global  _start

_start:

    mov     ecx, 0o0777         ; Create file from lesson 22
    mov     ebx, filename
    mov     eax, 8
    int     0x80

    mov     edx, 12             ; Write contents to file from lesson 23
    mov     ecx, contents
    mov     ebx, eax
    mov     eax, 4
    int     0x80

    mov     ecx, 0              ; flag for readonly access mode (O_RDONLY)
    mov     ebx, filename       ; filename we created above
    mov     eax, 5              ; invoke SYS_OPEN (kernel opcode 5)
    int     0x80                ; call the kernel

    call    iprintLF            ; call our integer printing function
    call    quit                ; call our quit function
