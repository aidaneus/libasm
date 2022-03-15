extern _malloc
extern ___error
extern _ft_strlen
extern _ft_strcpy
section .text
global _ft_strdup

_ft_strdup:
            push rdi
            call _ft_strlen
            mov rdi, rax
            inc rdi
            call _malloc
            jc .error
            pop rsi
            mov rdi, rax
            call _ft_strcpy
            ret
.error:
            push rax
            call ___error
            pop rdx
            mov [rax], edx
            mov rax, 0
            ret