#include <iostream>
#include <vector>
using namespace std;

int main() {
	int N, answer = 0;
	vector<vector<int> > dp(2, vector<int>(12,1));
	dp[0][0] = 0;
	dp[0][11] = 0;
	dp[1][0] = 0;
	dp[1][11] = 0;

	dp[0][1] = 0;//0으로 시작 불가

	cin >> N;
	for (int i = 0; i < N / 2; i++) {
		for (int a = 1; a < 11; a++) {
			dp[1][a] = dp[0][a - 1] + dp[0][a + 1];
			dp[1][a] = dp[1][a] % 1000000000;
		}
		for (int a = 1; a < 11; a++) {
			dp[0][a] = dp[1][a - 1] + dp[1][a + 1];
			dp[0][a] = dp[0][a] % 1000000000;
		}
	}

	for (int i = 1; i < 11; i++) {
		answer += dp[(N + 1) % 2][i];
		answer = answer % 1000000000;
	}
	cout << answer;
	return 0;
}