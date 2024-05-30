global ft_strcpy

section .text

ft_strcpy:
    push rdi
    loop:
    mov al, byte [rsi]
    mov byte [rdi], al
    cmp al, byte 0
    je end
    inc rsi
    inc rdi
    jmp loop
    end:
    pop rax
    ret
