nasm -felf64 asm/helloworld.asm -o build/helloworld.o
ld build/helloworld.o -o build/helloworld