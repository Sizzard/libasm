global ft_strlen

section .text

ft_strlen:
    push rdi
    loop:
    cmp [rdi], byte 0
    je end
    inc rdi
    jmp loop
    end:
    mov rax, rdi
    pop rdi
    sub rax, rdi
    ret