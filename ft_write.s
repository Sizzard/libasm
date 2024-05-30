extern __errno_location
global ft_write


section .text

ft_write:
  mov rax, 1        ; write(
  syscall           ; );
  cmp rax, 0
  jl error
  ret
  error:
  neg rax
  mov rdi ,rax
  call __errno_location
  mov [rax] , rdi
  mov rax, -1
  ret