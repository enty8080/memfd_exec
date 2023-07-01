nasm -felf64 x64.nasm -o x64.o
ld x64.o -o x64
strace ./x64
