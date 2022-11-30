#include <stdio.h>
#include <vector>
#include <algorithm>
using namespace std;
vector<vector<int> > arr;
vector<int> answer;

bool cmp(int a, int b) {
	int trouble = 0;
	for (int i = 0; i < 5; i++) {
		if (arr[i][a] > arr[i][b])
			trouble++;
	}
	return trouble < 3;//바꿔야 하면 false 리턴임
}

int main() {
	int N, reader;
	scanf("%d", &N);
	arr.assign(5, vector<int>(N, 0));

	for (int i = 0; i < 5 * N; i++) {
		scanf("%d", &reader);
		arr[i / N][reader - 1] = i % N;
	}
	answer.assign(arr[0].begin(), arr[0].end());
	sort(answer.begin(), answer.end(), cmp);

	for (int i = 0; i < N; i++) {
		printf("%d\n", answer[i] + 1);
	}
}