; Process Forking
; https://asmtutor.com/

%include        '17-functions.asm'

SECTION .data
childMsg        db      'This is the child process', 0h     ; a message string
parentMsg       db      'This is the parent process', 0h    ; a message string

SECTION .text
global  _start

_start:

    mov     eax, 2              ; invoke SYS_FORK (kernel opcode 2)
    int     80h

    cmp     eax, 0              ; if eax is zero we are in the child process
    jz      child               ; jump if eax is zero to child label

parent:
    mov     eax, parentMsg      ; inside our parent process move parentMsg into eax
    call    sprintLF            ; call our string printing with linefeed function

    call    quit                ; quit the parent process

child:
    mov     eax, childMsg       ; inside our child process move childMsg into eax
    call    sprintLF            ; call our string printing with linefeed function

    call    quit                ; quit the child process
