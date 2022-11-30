#include <stdio.h>
#include <algorithm>
#include <iostream>
#include <queue>
using namespace std;

struct Coordinate {
	int home;
	int office;
};

int main() {
	priority_queue<int> que;
	int n, d;
	Coordinate Homeoffice[100000];
	int m, M;
	int Max = 0;

	scanf("%d", &n);
	for (int i = 0; i < n; i++) {
		scanf("%d%d", &Homeoffice[i].home, &Homeoffice[i].office);
		if (Homeoffice[i].office < Homeoffice[i].home) {
			swap(Homeoffice[i].home, Homeoffice[i].office);
		}
	}
	scanf("%d", &d);
	sort(Homeoffice, Homeoffice + n, [](Coordinate a, Coordinate b){
		return a.office < b.office;
	});
		;
	for (int i = 0; i < n; i++) {
		que.push(-Homeoffice[i].home);
		while (!que.empty() && -que.top() < Homeoffice[i].office - d) {
			que.pop();
		}
		Max = max(Max, (int)que.size());
	}
	printf("%d", Max);
	return 0;
}