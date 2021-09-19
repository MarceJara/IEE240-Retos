nasm -f elf64 -g fuerteDebil.asm -o fuerteDebil.o
ld fuerteDebil.o -o fuerteDebil
./fuerteDebil

gdb -x depurador.gdb