#include <iostream>
#include <algorithm>
using namespace std;

int main() {
	int N, p[1001], dp[2][1001];
	cin >> N;
	for (int i = 1; i <= N; i++) {
		cin >> p[i];
	}

	dp[0][0] = 0;
	dp[1][0] = 0;

	for (int i = 1; i <= N; i++) {//1장구할땐 1원짜리 * n개
		dp[0][i] = p[1] * i;
	}

	for (int i = 0; i < N / 2; i++) {
		for (int a = 1; a <= N; a++) {
			if (i * 2 + 2 > a)
				dp[1][a] = dp[0][a];
			else
				dp[1][a] = max(dp[0][a], dp[1][a - (i * 2 + 2)] + p[i * 2 + 2]);
		}
		for (int a = 1; a <= N; a++) {
			if (i * 2 + 3 > a)
				dp[0][a] = dp[1][a];
			else
				dp[0][a] = max(dp[1][a], dp[0][a - (i * 2 + 3)] + p[i * 2 + 3]);
		}
	}

	cout << dp[(N + 1) % 2][N];
	return 0;
}