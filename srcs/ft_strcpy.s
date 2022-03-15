section .text
global _ft_strcpy

_ft_strcpy:
            xor rcx, rcx
            mov rax, rdi
.function:
            mov dl, byte[rsi + rcx]
            mov byte[rdi + rcx], dl
            test dl, dl
            jz .end
            inc rcx
            jmp .function
.end:
            ret