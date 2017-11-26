; http://litwr2.atspace.eu/art-pls/compiler-test-sources-e.html

format ELF64 executable 3

segment readable executable

entry $
        mov     eax,25          ;an argument
        push    rax
        call    fib
        pop     rax
        call    todec           ;form string for output

        mov     rdx,msgend-msg+1
        mov     rsi,msg

.l2:    cmp     byte [rsi],0    ;skip leading zeros
        jnz     .l1

        dec     rdx
        inc     rsi
        jmp     .l2

.l1:
        mov     edi,1           ;STDOUT
        mov     rax,1           ;sys_write
        syscall

        xor     edi,edi         ;exit code 0
        mov     eax,60          ;sys_exit
        syscall

fib:    cmp     rax,2
        ja      .l1

        mov     qword [rsp+8],1
        ret

.l1:    dec     rax
        push    rax
        call    fib
        pop     rdx
        mov     rax,[rsp+8]
        mov     [rsp+8],rdx

        dec     rax
        dec     rax
        push    rax
        call    fib
        pop     rax

        add     rax,[rsp+8]
        mov     [rsp+8],rax
        ret

todec:  mov     rbx,msgend-1
        mov     ecx,10

.l1:    xor     rdx,rdx
        div     rcx
        add     dl,48
        mov     [rbx],dl
        dec     rbx
        or      rax,rax
        jnz     .l1
        ret

segment readable writeable

msg     db      0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
msgend  db      10
