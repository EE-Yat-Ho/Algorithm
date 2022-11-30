#include <stdio.h>
int main() {
	int t;
	scanf("%d", &t);
	
	int s, k;
	while (t--) {
		scanf("%d %d", &s, &k);
		if (k % 2 == 1) {
			if (s % 2 == 1)
				printf("1\n");
			else
				printf("0\n");
		}
		else {
			int a;
			a = s % (k + 1);
			if (a == k) 
				printf("%d\n", k);
			else if (a % 2 == 1) 
				printf("1\n");
			else 
				printf("0\n");
		}
	}
}