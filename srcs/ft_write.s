extern ___error
section .text
global _ft_write

_ft_write:
            mov rax, 0x2000004
            syscall
            jc .error
            ret
.error:
            push rbx
            mov rbx, rax
            call ___error
            mov [rax], rbx
            mov rax, -1
            pop rdx
            ret