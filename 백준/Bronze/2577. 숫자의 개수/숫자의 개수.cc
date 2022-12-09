#include <stdio.h>
int cnt[10];
int main() {
	int a, b, c, z;
	scanf("%d %d %d", &a, &b, &c);
	z = a * b*c;
	for (int i = 0; i < 10 && z; i++) {
		cnt[z % 10]++;
		z /= 10;
	}
	for (int i = 0; i < 10; i++) {
		printf("%d\n", cnt[i]);
	}
}