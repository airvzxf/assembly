; File Handling - Close
; https://asmtutor.com/

%include        '17-functions.asm'

SECTION .data
filename db 'readme.txt', 0x0    ; the filename to create
contents db 'Hello world!', 0x0  ; the contents to write

SECTION .bss
fileContents resb 255,          ; variable to store file contents

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

    mov     ecx, 0              ; Open file from lesson 24
    mov     ebx, filename
    mov     eax, 5
    int     0x80

    mov     edx, 12             ; Read file from lesson 25
    mov     ecx, fileContents
    mov     ebx, eax
    mov     eax, 3
    int     0x80

    mov     eax, fileContents
    call    sprintLF

    mov     ebx, ebx            ; not needed but used to demonstrate that SYS_CLOSE takes a file descriptor from EBX
    mov     eax, 6              ; invoke SYS_CLOSE (kernel opcode 6)
    int     0x80                ; call the kernel

    call    quit                ; call our quit function
