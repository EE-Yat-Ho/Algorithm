#include <iostream>
#include <algorithm>
using namespace std;
#define INF 10001

int N, K;
int dp[2][10001];
int coin[101];


int getAnswer() {
	//init
	for (int k = 1; k <= K; k++) 
		dp[0][k] = INF;
	
	//calculate
	int n;
	for (n = 1; n <= N; n++) {
		for (int k = 1; k <= K; k++) {
			if (coin[n] > k)
				dp[n % 2][k] = dp[(n + 1) % 2][k];
			else
				dp[n % 2][k] = min(dp[(n + 1) % 2][k], dp[n % 2][k - coin[n]] + 1);
		}
	}

	return dp[(n + 1) % 2][K] == INF ? -1 : dp[(n + 1) % 2][K];
}

int main() {
	cin >> N >> K;
	for(int n = 1; n <= N; n++)
		cin >> coin[n];

	cout << getAnswer();//break할때 root는 1증가된 상태니까
	return 0;
}

