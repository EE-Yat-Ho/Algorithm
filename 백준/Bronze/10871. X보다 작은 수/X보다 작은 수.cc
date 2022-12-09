#include <stdio.h>
int main() {
	int N, X, r;
	scanf("%d %d", &N, &X);
	for (int i = 0; i < N; i++) {
		scanf("%d", &r);
		if (r < X)
			printf("%d ", r);
	}
}