#include <stdio.h>
#include <algorithm>
#include <vector>
#pragma warning(disable:4996)
using namespace std;

bool cmp(pair<int, int> a, pair<int, int> b) {
	return a.second < b.second;
}

int main() {
	int n;
	scanf("%d", &n);

	vector<pair<int, int> > cost(n, make_pair(0,0));
	for (int i = 0; i < n; i++)
		scanf("%d %d", &cost[i].first, &cost[i].second);
	sort(cost.begin(), cost.end(), cmp);

	vector<int> n_from_i_min_first(n + 1, 0);
	n_from_i_min_first[n] = 2000000000;
	long long answer_base = 0, answer1, answer2;
	int min_add = 2000000000;

	for (int i = n - 1; i >= 0; i--)
		n_from_i_min_first[i] = min(cost[i].first, n_from_i_min_first[i + 1]);

	for (int i = 0; i < n; i++) {
		answer_base += cost[i].second;
		min_add = min(min_add, cost[i].first - cost[i].second);

		answer1 = answer_base + min_add;
		answer2 = answer_base - cost[i].second + n_from_i_min_first[i];

		printf("%lld\n", min(answer1, answer2));
	}
}