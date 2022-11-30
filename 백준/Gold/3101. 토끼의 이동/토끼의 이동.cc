#include <stdio.h>
#pragma warning(disable:4996)
long long arr[2000010];
int n, k;

long long yxToIndex(int y, int x) {
	if (y + x < n) {
		if ((y + x) % 2 == 0)
			return arr[y + x] + x;
		else
			return arr[y + x] + y;
	}
	else {
		if ((y + x) % 2 == 0)
			return arr[y + x] + x + (n - (y + x)) - 1;
		else
			return arr[y + x] + y + (n - (y + x)) - 1;
	}
}

int main() {	
	scanf("%d %d\n", &n, &k);
	arr[0] = 1;
	int addIndex = 1;
	for (int i = 1; i < n; i++) 
		arr[i] = arr[i - 1] + addIndex++;
	for (int i = n; i < 2 * n - 1; i++)
		arr[i] = arr[i - 1] + addIndex--;

	long long answer = 1;
	int y = 0, x = 0;
	char r;
	while (k--) {
		scanf("%c", &r);
		if (r == 'D') y++;
		else if (r == 'R') x++;
		else if (r == 'U') y--;
		else x--;

		answer += yxToIndex(y, x);
	}
	printf("%lld", answer);
}