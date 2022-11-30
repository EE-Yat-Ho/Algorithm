#include <iostream>
#include <algorithm>
using namespace std;

int N;
int dp[10][2];

void CalDP() {
	for (int i = 0; i < 10; i++)//init
		dp[i][1] = 1;
	dp[0][0] = 1;

	for (int n = 2; n <= N; n++) {
		for (int i = 1; i < 10; i++) {
			dp[i][n % 2] = (dp[i][(n + 1) % 2] + dp[i - 1][n % 2]) % 10007;
		}
	}
}

int main() {
	cin >> N;
	CalDP();

	int answer = 0;
	for (int i = 0; i < 10; i++) {
		answer += dp[i][N % 2];
	}
	cout << answer % 10007;
	return 0;
}