; Download a Webpage
; https://asmtutor.com/

%include        '17-functions.asm'

SECTION .data
msgSocket     db      '---===--- Socket returns: ', 0x0
msgConnect    db      '---===--- Connect returns: ', 0x0
msgWrite      db      '---===--- Write returns: ', 0x0
msgClose      db      '---===--- Close returns: ', 0xA, 0x0
msgExit       db      '---===--- Finished!', 0xA, 0x0
; our request string
request db 'GET / HTTP/1.1', 0Dh, 0Ah, 'Host: 139.162.39.66:80', 0Dh, 0Ah, 0Dh, 0Ah, 0h

SECTION .bss
buffer resb 1,                  ; variable to store response

SECTION .text
global  _start

_start:

    xor     eax, eax            ; init eax 0
    xor     ebx, ebx            ; init ebx 0
    xor     edi, edi            ; init edi 0

_socket:

    push    byte 6              ; push 6 onto the stack (IPPROTO_TCP)
    push    byte 1              ; push 1 onto the stack (SOCK_STREAM)
    push    byte 2              ; push 2 onto the stack (PF_INET)
    mov     ecx, esp            ; move address of arguments into ecx
    mov     ebx, 1              ; invoke subroutine SOCKET (1)
    mov     eax, 102            ; invoke SYS_SOCKETCALL (kernel opcode 102)
    int     0x80                ; call the kernel

    push    eax                 ; Print message in the STD Out
    mov     edx, 26
    mov     ecx, msgSocket
    mov     ebx, 1
    mov     eax, 4
    int     0x80
    pop     eax
    call    iprintLF            ; call our integer printing function (print the file descriptor in EAX or -1 on error)

_connect:

    mov     edi, eax            ; move return value of SYS_SOCKETCALL into edi (file descriptor for new socket, or -1 on error)
    push    dword 0x4227a28b    ; push 139.162.39.66 onto the stack IP ADDRESS (reverse byte order)
    push    word 0x5000         ; push 80 onto stack PORT (reverse byte order)
    push    word 2              ; push 2 dec onto stack AF_INET
    mov     ecx, esp            ; move address of stack pointer into ecx
    push    byte 16             ; push 16 dec onto stack (arguments length)
    push    ecx                 ; push the address of arguments onto stack
    push    edi                 ; push the file descriptor onto stack
    mov     ecx, esp            ; move address of arguments into ecx
    mov     ebx, 3              ; invoke subroutine CONNECT (3)
    mov     eax, 102            ; invoke SYS_SOCKETCALL (kernel opcode 102)
    int     0x80                ; call the kernel

    push    eax                 ; Print message in the STD Out
    mov     edx, 27
    mov     ecx, msgConnect
    mov     ebx, 1
    mov     eax, 4
    int     0x80
    pop     eax
    call    iprintLF            ; call our integer printing function (print the file descriptor in EAX or -1 on error)

_write:

    mov     edx, 43             ; move 43 dec into edx (length in bytes to write)
    mov     ecx, request        ; move address of our request variable into ecx
    mov     ebx, edi            ; move file descriptor into ebx (created socket file descriptor)
    mov     eax, 4
    int     0x80                ; call the kernel

    push    eax                 ; Print message in the STD Out
    mov     edx, 25
    mov     ecx, msgWrite
    mov     ebx, 1
    mov     eax, 4
    int     0x80
    pop     eax
    call    iprintLF            ; call our integer printing function (print the file descriptor in EAX or -1 on error)

_read:

    mov     edx, 1              ; number of bytes to read (we will read 1 byte at a time)
    mov     ecx, buffer         ; move the memory address of our buffer variable into ecx
    mov     ebx, edi            ; move edi into ebx (created socket file descriptor)
    mov     eax, 3              ; invoke SYS_READ (kernel opcode 3)
    int     0x80                ; call the kernel

    cmp     eax, 1              ; if return value of SYS_READ in eax is zero, we have reached the end of the file
    jz      _close              ; jmp to _close if we have reached the end of the file (zero flag set)

    mov     eax, buffer         ; move the memory address of our buffer variable into eax for printing
    call    sprint              ; call our string printing function
    jmp     _read               ; jmp to _read

_close:

    mov     ebx, edi            ; move edi into ebx (connected socket file descriptor)
    mov     eax, 6              ; invoke SYS_CLOSE (kernel opcode 6)
    int     0x80                ; call the kernel

    push    eax                 ; Print message in the STD Out
    mov     edx, 25
    mov     ecx, msgClose
    mov     ebx, 1
    mov     eax, 4
    int     0x80
    pop     eax
    call    iprintLF            ; call our integer printing function (print the file descriptor in EAX or -1 on error)

_exit:

    mov     edx, 20             ; Print message in the STD Out
    mov     ecx, msgExit
    mov     ebx, 1
    mov     eax, 4
    int     0x80

    call    quit                ; call our quit function
