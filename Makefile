all: boot.bin kernel.bin os-image

boot.bin:
	cd boot && make

kernel.bin:
	cd kernel && make

os-image: boot.bin kernel.bin
	cat boot/boot.bin kernel/kernel.bin > os-image.bin

clean:
	cd boot && make clean
	cd kernel && make clean
	rm -f os-image.bin
