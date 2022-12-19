#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;
int main() {
	int N;
	cin >> N;
	vector<vector<int> > arr(2, vector<int>(N+1, 0));
	vector<int> input(N+1, 0);
	for (int i = 1; i < N+1; i++) {
		cin >> input[i];
	}
	arr[0][1] = input[1];
	for (int i = 2; i < N + 1; i++) {
		arr[0][i] = max(arr[0][i - 2], arr[1][i - 2]) + input[i];
		arr[1][i] = arr[0][i - 1] + input[i];
	}
	cout << max(arr[0][N], arr[1][N]);
	return 0;
}