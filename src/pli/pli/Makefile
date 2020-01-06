CC = gcc
OBJDIR=./obj
INCLUDES = -I/home/ali/Programs/Altera/modelsim_ase/include 

INC = $(INCLUDES)
CFLAGS= -m32
LDFLAGS=-m elf_i386 
main: pli_full_example.sl 
	echo 'Done!'

pli_full_example_modelsim.o: pli_full_example_modelsim.c counter.o pli_full_example.o
	$(CC)  $(CFLAGS) $(INC) -c pli_full_example_modelsim.c

counter.o: counter.c 
	$(CC)  $(CFLAGS) $(INC) -c counter.c 

pli_full_example.o: pli_full_example.c
	$(CC)  $(CFLAGS) $(INC) -c pli_full_example.c

pli_full_example.sl: pli_full_example_modelsim.o
	ld -shared -E -o pli_full_example.sl pli_full_example_modelsim.o $(LDFLAGS)
clean: 
	rm *.o
