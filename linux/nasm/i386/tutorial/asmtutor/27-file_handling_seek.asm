; File Handling - Seek
; https://asmtutor.com/

%include        '17-functions.asm'

SECTION .data
filename  db 'readme.txt', 0x0    ; the filename to create
contents  db '-updated-', 0x0     ; the contents to write at the start of the file

SECTION .text
global  _start

_start:

    mov     ecx, 1              ; flag for writeonly access mode (O_WRONLY)
    mov     ebx, filename       ; filename of the file to open
    mov     eax, 5              ; invoke SYS_OPEN (kernel opcode 5)
    int     0x80                ; call the kernel

    mov     edx, 2              ; whence argument (SEEK_END)
    mov     ecx, 0              ; move the cursor 0 bytes
    mov     ebx, eax            ; move the opened file descriptor into EBX
    mov     eax, 19             ; invoke SYS_LSEEK (kernel opcode 19)
    int     0x80                ; call the kernel

    mov     edx, 9              ; number of bytes to write - one for each letter of our contents string
    mov     ecx, contents       ; move the memory address of our contents string into ecx
    mov     ebx, ebx            ; move the opened file descriptor into EBX (not required as EBX already has the FD)
    mov     eax, 4              ; invoke SYS_WRITE (kernel opcode 4)
    int     0x80                ; call the kernel

    call    quit                ; call our quit function
