; This is my solution (Israel Roldan)

format ELF64 executable 3

segment readable executable

entry $
    mov     rax, 0      ; Current number
    mov     rbx, 1      ; Next number
    mov     rcx, 48d    ; Number of iterations
    mov     rdx, rax    ; Fibonacci number

.Infinite:
    add     rdx, rax    ; Fibonacci = lastn number + current
    mov     rax, rbx    ; Current = Next number (old number)
    mov     rbx, rdx    ; Next = fibonacci number

    dec     rcx         ; Reduce the counter by one
    jz      .Finished
    jmp     .Infinite

.Finished:
    mov     rdi, 0
    mov     rax, 60d
    syscall
