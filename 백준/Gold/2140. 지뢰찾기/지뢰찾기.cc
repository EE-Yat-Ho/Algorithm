#include <stdio.h>
#pragma warning(disable:4996)
using namespace std;
char map[100][100];
int main() {
	int n;
	char r;
	scanf("%d\n", &n);
	for (int i = 0; i < n; i++) {
		for (int j = 0; j < n; j++) {
			scanf("%c", &map[i][j]);
		}
		scanf("%c", &r);//\n
	}
	int answer = n < 5 ? 0 : (n - 4)*(n - 4);
	for (int i = 0; i < n - 3; i++) {
		if (map[0][i] == 49) {
			map[0][i + 1]--;
			map[0][i + 2]--;
			answer++;
		}
	}
	if (map[0][n - 3] == 49) {
		answer++;
		map[0][n - 1]--;
		map[1][n - 1]--;
		map[2][n - 1]--;
	}
	for (int i = 0; i < n - 3; i++) {
		if (map[i][n - 1] == 49) {
			map[i + 1][n - 1]--;
			map[i + 2][n - 1]--;
			answer++;
		}
	}
	if (map[n - 3][n - 1] == 49) {
		answer++;
		map[n - 1][n - 1]--;
		map[n - 1][n - 2]--;
		map[n - 1][n - 3]--;
	}
	for (int i = n - 1; i > 2; i--) {
		if (map[n - 1][i] == 49) {
			map[n - 1][i - 1]--;
			map[n - 1][i - 2]--;
			answer++;
		}
	}
	if (map[n - 1][2] == 49) {
		answer++;
		map[n - 1][0]--;
		map[n - 2][0]--;
		map[n - 3][0]--;
	}
	for (int i = n - 1; i > 2; i--) {
		if (map[i][0] == 49) {
			map[i - 1][0]--;
			map[i - 2][0]--;
			answer++;
		}
	}
	printf("%d", answer);
}