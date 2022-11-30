#include <stdio.h>
#include <vector>
using namespace std;
int main() {
	int n;
	scanf("%d", &n);

	vector<int> inp(n, 0);
	for (int i = 0; i < n; i++) {
		scanf("%d", &inp[i]);
	}

	int answer = 0;
	vector<int> can(400001, 0);//음수생각 x2
	for (int i = 0; i < n; i++) {
		for (int j = 0; j < i; j++) {
			if (can[inp[i] - inp[j] + 200000]) {
				answer++;
				break;
			}
		}
		for (int j = 0; j <= i; j++) {
			can[inp[i] + inp[j] + 200000] = 1;
		}
	}
	printf("%d", answer);
}