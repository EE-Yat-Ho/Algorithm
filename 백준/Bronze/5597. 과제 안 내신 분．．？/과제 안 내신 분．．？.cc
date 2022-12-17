#include <stdio.h>
int list[31];
int main() {
	int r;
	for (int i = 0; i < 28; i++) {
		scanf("%d", &r);
		list[r] = 1;
	}

	for (int i = 1; i < 31; i++) {
		if (!list[i])
			printf("%d\n", i);
	}
}