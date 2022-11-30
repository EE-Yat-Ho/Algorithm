#include<stdio.h>
#include<vector>
#include<algorithm>
using namespace std;
int main() {
	vector<long long> fact(20, 1);
	for (int i = 2; i < 20; i++) 
		fact[i] = fact[i - 1] * i;
	
	int n, q;
	scanf("%d %d", &n, &q);
	if (q == 1) {
		long long k;
		scanf("%lld", &k);
		k--;
		vector<int> answer(n, 0);
		vector<int> used(n, 0);
		int now;
		for(int i = 0; i < n; i++) {
			now = k / fact[n - i - 1];
			for (int j = 0; j < n; j++) {
				if (used[j] == 0) {
					if (now == 0) {
						answer[i] = j + 1;
						used[j] = 1;
						break;
					}
					now--;
				}
			}
			k %= fact[n - i - 1];
		}
		for (int i = 0; i < n; i++) 
			printf("%d ", answer[i]);
	}
	else {
		vector<int> reader(n, 0);
		for (int i = 0; i < n; i++)
			scanf("%d", &reader[i]);
		
		int now, cnt;
		long long answer = 1;
		for (int i = 0; i < n; i++) {
			now = reader[i];
			cnt = 0;
			for (int j = i + 1; j < n; j++)
				if (reader[j] < now)
					cnt++;
			answer += cnt * fact[n - i - 1];
		}
		printf("%lld", answer);
	}
}