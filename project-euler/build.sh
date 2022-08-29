nasm -O0 -f elf64 -g p1.asm -o p1.o
ld -g -o p1 p1.o
rm p1.o
