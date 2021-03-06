#include <stdint.h>
#include <stdio.h>

int num[16][4]={0,0,0,0,
		1,0,0,0,
		0,1,0,0,
		1,1,0,0,
		0,0,1,0,
		1,0,1,0,
		0,1,1,0,
		1,1,1,0,
		0,0,0,1,
		1,0,0,1,
		0,1,0,1,
		1,1,0,1,
		0,0,1,1,
		1,0,1,1,
		0,1,1,1,
		1,1,1,1};
int output[4];

int convert_to_grey(int binary){
	int i=0;
	for(i=0;i<3;i++)
		output[i]=num[binary][i]^num[binary][i+1];
	output[3]=num[binary][3];
	return 1;
}

int main(){
	printf("This program will generate 4 bit grey code\n");
	int i=0;
	int m=0;
	for(i=0;i<16;i++){
		convert_to_grey(i);
		printf("%d:",i);
		for(m=0;m<4;m++)
			printf("%d",output[m]);
		printf("\n");
	}

}
