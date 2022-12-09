#include <stdio.h>
int main() {
	int N;
	scanf("%d", &N);
	if (N > 89)
		printf("A");
	else if (N > 79)
		printf("B");
	else if (N > 69)
		printf("C");
	else if (N > 59)
		printf("D");
	else
		printf("F");
}