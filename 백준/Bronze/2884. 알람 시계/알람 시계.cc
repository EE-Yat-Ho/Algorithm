#include <stdio.h>
int main() {
	int h, m;
	scanf("%d %d", &h, &m);
	if (m > 44)
		m -= 45;
	else {
		m += 15;
		if (h)
			h -= 1;
		else
			h = 23;
	}
	printf("%d %d", h, m);
}