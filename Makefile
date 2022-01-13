CC = gcc
CFLAGS = -m32 -g

ASM = nasm
AFLAGS = -f elf

gcd: gcd.o gcd.c
	$(CC) $(CFLAGS) -o gcd gcd.o gcd.c

%: %.o
	@echo "[GCC]  $<"
	$(CC) $(CFLAGS) -o $@ $<
	./$@

%.o: %.asm
	@echo "[ASM]  $<"
	$(ASM) $(AFLAGS) $<

clean:
	rm -rf *.o gcd

# nasm -f elf -o hello.o hello.asm
# gcc -m32 -o hello hello.o
