#include <stdio.h>
#include <stdlib.h>

int main(int argc,char *argv[])
{
	printf("This program is used to generate hamming code 7/3\n");
	printf("4 bits information needed to be code which is input paramter\n");
	/*
	  command to run this program will be like this:
	  ./hamming_code_7_3 1 0 0 0
	  1 will be a6
	*/
	printf("Number of parameter is %d\n",argc);
	if(argc!=5){
		printf("argument error!\n");
		return 1;
	}
	int a[7];
	a[6]=atoi(argv[1]);
	a[5]=atoi(argv[2]);
	a[4]=atoi(argv[3]);
	a[3]=atoi(argv[4]);
	a[2]=a[6]^a[5]^a[4];
	a[1]=a[6]^a[5]^a[3];
	a[0]=a[6]^a[4]^a[3];
	printf("Here is output for %d%d%d%d\n",a[6],a[5],a[4],a[3]);
	printf("a6 a5 a4 a3 a2 a1 a0\n");
	printf("%2d %2d %2d %2d %2d %2d %2d\n",a[6],a[5],a[4],a[3],a[2],a[1],a[0]);
	
	return 0;
}
