all: assembly
assembly: assembly.o asm_io.o
	gcc -m32 -o $@ $+ $(HOME)/templateMake/driver.c

assembly.o: assembly.asm 
	nasm -f elf assembly.asm -o assembly.o

asm_io.o: $(HOME)/templateMake/asm_io.asm 
	nasm -f elf -d ELF_TYPE $(HOME)/templateMake/asm_io.asm -o asm_io.o

clean:
	rm assembly *.o
