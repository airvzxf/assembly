; Execute Command
; https://asmtutor.com/

%include        '17-functions.asm'

SECTION .data
echo_command    db      '/bin/echo', 0x0    ; command to execute
echo_arg1       db      '-Hello-', 0x0
echo_arg2       db      '-World!-', 0x0
echo_arg3       db      '-Argument #3 with spaces-', 0x0
echo_arguments  dd      echo_command
                dd      echo_arg1           ; arguments to pass to commandline
                dd      echo_arg2           ; arguments to pass to commandline
                dd      echo_arg3           ; arguments to pass to commandline
                dd      0x0                 ; end the struct
ls_command      db      '/bin/ls', 0x0      ; command to execute
ls_arg1         db      '-l', 0x0
ls_arguments    dd      ls_command
                dd      ls_arg1             ; arguments to pass to commandline
                dd      0x0                 ; end the struct
environment     dd      0x0                 ; arguments to pass as environment variables (inthis case none) end the struct

SECTION .text
global  _start

_start:

    mov     edx, environment    ; address of environment variables
    mov     ecx, echo_arguments ; address of the arguments to pass to the commandline
    mov     ebx, echo_command   ; address of the file to execute
    mov     eax, 11             ; invoke SYS_EXECVE (kernel opcode 11)
    int     0x80

    ; This instruction is not executed because the above Signal finish the execution
    mov     edx, environment    ; address of environment variables
    mov     ecx, ls_arguments   ; address of the arguments to pass to the commandline
    mov     ebx, ls_command     ; address of the file to execute
    mov     eax, 11             ; invoke SYS_EXECVE (kernel opcode 11)
    int     0x80

    call    quit                ; call our quit function
