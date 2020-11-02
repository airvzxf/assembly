; Linefeeds
; https://asmtutor.com/

%include        '07-functions.asm'

SECTION .data
msg1    db      'Hello, brave new world!', 0h          ; NOTE we have removed the line feed character 0Ah
msg2    db      'This is how we recycle in NASM.', 0h  ; NOTE we have removed the line feed character 0Ah

SECTION .text
global  _start

_start:

    mov     eax, msg1
    call    sprintLF    ; NOTE we are calling our new print with linefeed function

    mov     eax, msg2
    call    sprintLF    ; NOTE we are calling our new print with linefeed function

    call    quit
