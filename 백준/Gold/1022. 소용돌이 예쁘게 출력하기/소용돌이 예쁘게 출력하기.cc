#include <stdio.h>
#include <algorithm>
using namespace std;
int getValue(int x, int y) {
	int k = max(abs(x), abs(y));
	if (x > y && x >= -y)
		return (2 * k - 1) * (2 * k - 1) + k - y;
	else if (x >= y && x < -y)
		return (2 * k - 1) * (2 * k - 1) + 3 * k - x;
	else if (x < y && y <= -x)
		return (2 * k - 1) * (2 * k - 1) + 5 * k + y;
	else if (x <= y && y > -x)
		return (2 * k - 1) * (2 * k - 1) + 7 * k + x;
	else
		return 1;//(0,0)
}
int main() {
	int r1, c1, r2, c2;
	scanf("%d %d %d %d", &r1, &c1, &r2, &c2);

	int maxValue = max(getValue(c1, r1), max(getValue(c1, r2), max(getValue(c2, r1), getValue(c2, r2))));
	int wkflttn = 1;
	while (maxValue) {
		maxValue /= 10;
		wkflttn++;
	}
	for (int y = r1; y <= r2; y++) {
		for (int x = c1; x <= c2; x++) {
			printf("%*d ", wkflttn - 1, getValue(x, y));
		}
		printf("\n");
	}
}