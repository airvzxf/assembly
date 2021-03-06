; Proper program exit
; https://asmtutor.com/

SECTION .data
msg     db      'Hello World!', 0xA     ; assign msg variable with your message string

SECTION .text
global  _start

_start:

    mov     edx, 13     ; number of bytes to write - one for each letter plus 0xA (line feed character)
    mov     ecx, msg    ; move the memory address of our message string into ecx
    mov     ebx, 1      ; write to the STDOUT file
    mov     eax, 4      ; invoke SYS_WRITE (kernel opcode 4)
    int     0x80

    mov     ebx, 0      ; return 0 status on exit - 'No Errors'
    mov     eax, 1      ; invoke SYS_EXIT (kernel opcode 1)
    int     0x80
