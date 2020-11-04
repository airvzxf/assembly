; File Handling - Read
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

    mov     edx, 12             ; number of bytes to read - one for each letter of the file contents
    mov     ecx, fileContents   ; move the memory address of our file contents variable into ecx
    mov     ebx, eax            ; move the opened file descriptor into EBX
    mov     eax, 3              ; invoke SYS_READ (kernel opcode 3)
    int     0x80                ; call the kernel

    mov     eax, fileContents   ; move the memory address of our file contents variable into eax for printing
    call    sprintLF            ; call our string printing function

    call    quit                ; call our quit function
