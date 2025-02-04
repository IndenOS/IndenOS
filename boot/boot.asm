[BITS 16]      ; Mode real (16-bit)
[ORG 0x7C00]   ; BIOS akan memuat bootloader di alamat ini

start:
    mov si, msg
    call print_string

    jmp $

print_string:
    mov ah, 0x0E  ; BIOS teletype mode
.loop:
    lodsb         ; Ambil karakter dari SI
    cmp al, 0
    je done       ; Jika null, selesai
    int 0x10      ; Cetak karakter ke layar
    jmp .loop
done:
    ret

msg db "Bootloader berhasil dimuat!", 0

times 510-($-$$) db 0  ; Padding agar ukuran tepat 512 byte
dw 0xAA55              ; Boot signature
