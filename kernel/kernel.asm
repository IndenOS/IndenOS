[BITS 32]
[GLOBAL _start]
[EXTERN main]   ; Deklarasikan bahwa main() ada di file lain (kernel.c)

SECTION .text
_start:
    call main   ; Panggil fungsi main() dari kernel.c
    hlt         ; Hentikan CPU
