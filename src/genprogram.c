#include <stdio.h>
#include <stdlib.h>

#define LDA "0010"
#define ADD "0001"
#define STA "0011"

int main(int argc, char const **argv)
{
	int ldaddr;
	int sdaddr;
	if(argc != 3)
	{
		printf("genprog <load-address-offset> <write-address-offset>");
	}
	else
	{
		ldaddr = atoi(argv[1]);
		sdaddr = atoi(argv[2]);
		
		printf("%s\n", );
	}

	return 0;

}