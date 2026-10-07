global _start

section .rodata
msg db "Hello, World"
msg_len equ $ - msg

section .text
_start:
    mov rax, 1              ; write syscall
    mov rdi, 1              ; fd - stdout
    mov rsi, msg            ; buffer
    lea rdx, msg_len        ; bytes to write
    syscall

    mov rax, 60             ; exit syscall
    mov rdi, 0              ; exit code
    syscall