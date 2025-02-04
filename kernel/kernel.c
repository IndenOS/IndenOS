void main(void) {
    char *video_memory = (char *) 0xB8000;
    *video_memory = 'Z';  // Tampilkan huruf 'Z' di layar
    while (1);  // Loop tak terbatas agar OS tidak crash
}
