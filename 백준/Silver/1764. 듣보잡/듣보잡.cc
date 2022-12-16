#include <iostream>
#include <vector>
#include <string>
#include <algorithm>
using namespace std;
int main() {
	int N, M;
	scanf("%d %d\n", &N, &M);
	vector<string> Nv, Mv;
	Nv.assign(N, string());
	Mv.assign(M, string());
	for (int i = 0; i < N; i++) {
		getline(cin, Nv[i]);
	}
	for (int i = 0; i < M; i++) {
		getline(cin, Mv[i]);
	}

	sort(Nv.begin(), Nv.end());
	sort(Mv.begin(), Mv.end());

	int nPtr = 0, mPtr = 0;
	vector<string> answer;
	while (nPtr < N && mPtr < M) {
		if (Nv[nPtr] == Mv[mPtr]) {
			answer.push_back(Nv[nPtr]);
			nPtr++;
			mPtr++;
		}
		else {
			if (Nv[nPtr] > Mv[mPtr])
				mPtr++;
			else
				nPtr++;
		}
	}

	sort(answer.begin(), answer.end());
	cout << answer.size() << "\n";
	for (int i = 0; i < answer.size(); i++) {
		cout << answer[i] << "\n";
	}
}