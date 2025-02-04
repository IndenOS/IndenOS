
# Variabel
ARCH = i686
TARGET = kernel
CC = i686-linux-gnu-gcc
LD = i686-linux-gnu-ld
NASM = nasm

# Flag kompilasi
CFLAGS = -ffreestanding -m32 -fno-pic
LDFLAGS = -Ttext 0x1000 --oformat binary

# File sumber
SRC = kernel.c kernel.asm
OBJ = kernel.o kernel_asm.o

# Nama output
BIN = kernel.bin

# Aturan default untuk membuat image OS
all: $(BIN)

# Membuat kernel.o dari kernel.c
$(OBJ): kernel.c
	$(CC) $(CFLAGS) -c kernel.c -o kernel.o

# Membuat kernel_asm.o dari kernel.asm
kernel_asm.o: kernel.asm
	$(NASM) -f elf32 kernel.asm -o kernel_asm.o

# Menggabungkan objek dan membuat kernel.bin
$(BIN): $(OBJ)
	$(LD) $(LDFLAGS) $(OBJ) -o $(BIN)

# Membersihkan file hasil kompilasi
clean:
	rm -f $(OBJ) $(BIN)
