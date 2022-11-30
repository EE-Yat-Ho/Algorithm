#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

string st1, st2;
int dp[2][1001];

int getAnswer() {
	for (int n = 1; n <= st1.length(); n++) {
		for (int m = 1; m <= st2.length(); m++) {
			if (st1[n - 1] == st2[m - 1])
				dp[n % 2][m] = dp[(n + 1) % 2][m - 1] + 1;
			else
				dp[n % 2][m] = max(dp[n % 2][m - 1], dp[(n + 1) % 2][m]);
		}
	}
	return dp[st1.length() % 2][st2.length()];
}

int main() {
	getline(cin, st1);
	getline(cin, st2);
	cout << getAnswer();
	return 0;
}

