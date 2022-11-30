#include <stdio.h>
#include <vector>
#include <algorithm>
using namespace std;
vector<vector<int> > map(100001, vector<int>());
int main() {
	int n, m, a, b, answer = 0;
	scanf("%d %d", &n, &m);
	while (m--) {
		scanf("%d %d", &a, &b);
		if (a < b)
			map[a].push_back(b);
		else
			map[b].push_back(a);
	}
	for (int i = 1; i <= n; i++) 
		sort(map[i].begin(), map[i].end());
		
	for (int i = 1; i <= n; i++) {
		for (int j = 0; j < map[i].size(); j++) {
			int k = map[i][j];
			if (map[k].size() < map[i].size() - j + 1) {
				for (int l = 0; l < map[k].size(); l++) {
					answer += binary_search(map[i].begin() + j + 1, map[i].end(), map[k][l]);
				}
			}
			else {
				for (int l = j + 1; l < map[i].size(); l++) {
					answer += binary_search(map[k].begin(), map[k].end(), map[i][l]);
				}
			}
		}
	}
	printf("%d\n", answer);
}