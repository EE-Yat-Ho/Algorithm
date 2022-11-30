#include <stdio.h>

int getGCD(int a, int b) {
	int r = 1;
	while (r) {
		r = b % a;
		b = a;
		a = r;
	}
	return b;
}

int main() {
	int N, M;
	scanf("%d %d", &N, &M);
	while (1) {
		if (N > M)
			N -= M;
		else
			break;
	}
	printf("%d", M - getGCD(N, M));
}