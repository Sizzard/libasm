global ft_strcmp

section .text

ft_strcmp:
    mov rax, 0
    loop:
    movsx rax, byte [rdi]
    movsx rdx, byte [rsi]
    sub rax, rdx
    cmp [rdi], byte 0
    je end
    cmp [rsi], byte 0
    je end
    cmp al, byte 0
    jne end
    inc rdi
    inc rsi
    jmp loop
    end:
    ret
