#include <iostream>
#include <string>
#include <queue>
using namespace std;
string t[4];

void rotationClock(int tNum) { // 1
	char temp = t[tNum][7];
	for (int i = 7; i > 0; i--)
		t[tNum][i] = t[tNum][i - 1];
	t[tNum][0] = temp;
}

void rotationReverseClock(int tNum) { // -1
	char temp = t[tNum][0];
	for (int i = 0; i < 7; i++)
		t[tNum][i] = t[tNum][i + 1];
	t[tNum][7] = temp;
}

int main() {
	string r;
	for (int i = 0; i < 4; i++) {
		getline(cin, t[i]);
	}

	int n;
	cin >> n;

	int tNum, mod;
	queue<pair<int, int> > jobs;
	for (int i = 0; i < n; i++) {
		scanf("%d %d", &tNum, &mod);
		tNum--;
		jobs.push(make_pair(tNum, mod)); // pair(1,-1) left(2, -2), right(3, -3)
		while (!jobs.empty()) {
			tNum = jobs.front().first;
			mod = jobs.front().second;
			jobs.pop();

			if (tNum != 0 && (mod == 1 || mod == -1)) {
				if (t[tNum - 1][2] != t[tNum][6])
					jobs.push(make_pair(tNum - 1, -mod * 2));
			}
			else if (tNum != 0 && (mod == 2 || mod == -2)) {
				if (t[tNum - 1][2] != t[tNum][6])
					jobs.push(make_pair(tNum - 1, -mod));
			}

			if (tNum != 3 && (mod == 1 || mod == -1)) {
				if (t[tNum][2] != t[tNum + 1][6])
					jobs.push(make_pair(tNum + 1, -mod * 3));
			}
			else if (tNum != 3 && (mod == 3 || mod == -3)) {
				if (t[tNum][2] != t[tNum + 1][6])
					jobs.push(make_pair(tNum + 1, -mod));
			}

			if (mod > 0)
				rotationClock(tNum);
			else
				rotationReverseClock(tNum);
		}
	}

	int answer = 0;
	if (t[0][0] == '1')
		answer++;
	if (t[1][0] == '1')
		answer += 2;
	if (t[2][0] == '1')
		answer += 4;
	if (t[3][0] == '1')
		answer += 8;
	printf("%d", answer);
}