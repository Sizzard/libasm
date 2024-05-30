extern __errno_location
extern malloc
extern ft_strcpy
extern ft_strlen
global ft_strdup

section .text

ft_strdup:
    push rdi
    call ft_strlen
    mov rdi, rax
    inc rdi
    call malloc
    cmp rax, 0
    je error
    mov rdi,rax
    pop rsi
    call ft_strcpy
    ret
    error:
    pop rdi
    call __errno_location
    mov [rax], word 12
    mov rax, 0
    ret
