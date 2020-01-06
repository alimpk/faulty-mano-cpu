CC = gcc
OBJDIR=./obj
INCLUDES = -I/home/ali/Programs/Altera/modelsim_ase/include 

INC = $(INCLUDES)
CFLAGS= -m32 -g
LDFLAGS=-m elf_i386 -shared -E

main: pli_modelsim.sl 
	echo "Done!"

pli_modelsim.o: pli_modelsim.c pli_modelsim.h mano_alu_monitor.o
	$(CC)  $(CFLAGS) $(INC) -c pli_modelsim.c

mano_alu_monitor.o: mano_alu_monitor.c 
	$(CC)  $(CFLAGS) $(INC) -c mano_alu_monitor.c

pli_modelsim.sl: pli_modelsim.o
	ld $(LDFLAGS)  -o pli_modelsim.sl pli_modelsim.o 
clean: 
	rm *.o
