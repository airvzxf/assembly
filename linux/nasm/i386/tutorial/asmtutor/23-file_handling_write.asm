; File Handling - Write
; https://asmtutor.com/

%include        '17-functions.asm'

SECTION .data
filename db 'readme.txt', 0x0    ; the filename to create
contents db 'Hello world!', 0x0  ; the contents to write

SECTION .text
global  _start

_start:

    mov     ecx, 0o0777         ; code continues from lesson 22
    mov     ebx, filename
    mov     eax, 8
    int     0x80

    mov     edx, 12             ; number of bytes to write - one for each letter of our contents string
    mov     ecx, contents       ; move the memory address of our contents string into ecx
    mov     ebx, eax            ; move the file descriptor of the file we created into ebx
    mov     eax, 4              ; invoke SYS_WRITE (kernel opcode 4)
    int     0x80                ; call the kernel

    call    quit                ; call our quit function
