[BITS 16]    
[ORG 0x7C00] 

start:
    cli              
    lgdt [gdt_descriptor] 
    mov eax, cr0     
    or  eax, 1       
    mov cr0, eax     
    jmp CODE_SEG:init_protected_mode  

[BITS 32]  
init_protected_mode:
    mov ax, DATA_SEG
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax
    mov ss, ax
    mov esp, 0x90000

    mov esi, message
    call print_string

    jmp $

print_string:
    mov ah, 0x0E
.loop:
    lodsb
    cmp al, 0
    je done
    int 0x10
    jmp .loop
done:
    ret

message db "Berhasil masuk Protected Mode!", 0

gdt_start:
    dq 0x0000000000000000  
    dq 0x00CF9A000000FFFF  
    dq 0x00CF92000000FFFF  

gdt_descriptor:
    dw gdt_descriptor - gdt_start - 1
    dd gdt_start

CODE_SEG equ 0x08
DATA_SEG equ 0x10

times 510-($-$$) db 0
dw 0xAA55
