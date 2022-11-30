#include <stdio.h>
int main() { //이게 된다고?
	int d;
	scanf("%d", &d);
	
	int n, m;
	int a, b, c, a2, b2;
	while (d--) {
		scanf("%d %d", &n, &m);
		a = n - 1 - m / 2;
		b = (m - 1) / 2;
		c = a - b;
		a2 = 0;
		while (a > 0) {
			a /= 2;
			a2 += a;
		}
		b2 = 0;
		while (b > 0) {
			b /= 2;
			b2 += b;
		}
		while (c > 0) {
			c /= 2;
			b2 += c;
		}
		if (a2 > b2)
			printf("0\n");
		else
			printf("1\n");
	}
}