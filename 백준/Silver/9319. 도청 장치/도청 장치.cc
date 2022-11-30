#include <stdio.h>
using namespace std;
int main() {
	int t;
	scanf("%d", &t);
	while (t--) {
		int n, B, x, y;
		scanf("%d %d %d %d", &n, &B, &x, &y);
		double sumRi = 0, maxRi = 0, ri;
		int maxRiNum;
		for (int i = 0; i < n; i++) {
			int xr, yr, s;
			scanf("%d %d %d", &xr, &yr, &s);
			ri = (double)s / ((x - xr) * (x - xr) + (y - yr) * ( y - yr));
			if (maxRi < ri) {
				maxRi = ri;
				maxRiNum = i + 1;
			}
			sumRi += ri;
		}
		if (maxRi > 6 * (B + sumRi - maxRi))
			printf("%d\n", maxRiNum);
		else
			printf("NOISE\n");
	}
}