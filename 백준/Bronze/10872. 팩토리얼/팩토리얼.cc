#include <stdio.h>
int main() {
	int answer = 1, N;
	scanf("%d", &N);
	for (int i = 1; i <= N; i++) {
		answer *= i;
	}
	printf("%d", answer);
}