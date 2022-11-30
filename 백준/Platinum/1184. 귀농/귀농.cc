#include <stdio.h>
#include <vector>
#include <algorithm>
#pragma warning(disable:4996)
using namespace std;
int farm[51][51];


int twoPointToIncome(int my, int mx, int My, int Mx) {// 작은점, 큰점 순서
	return farm[My][Mx] - farm[my - 1][Mx] - farm[My][mx - 1] + farm[my - 1][mx - 1];
}

int main() {
	int n;
	scanf("%d", &n);
	for (int i = 1; i <= n; i++)
		for (int j = 1; j <= n; j++) 
			scanf("%d", &farm[i][j]);
		
	for (int i = 1; i <= n; i++)
		for (int j = 1; j <= n; j++)
			farm[i][j] += +farm[i - 1][j] + farm[i][j - 1] - farm[i - 1][j - 1];

	int answer = 0;
	vector<int> lu, rd, ld, ru;

	for (int y1 = 1; y1 < n; y1++)
		for (int x1 = 1; x1 < n; x1++) {
			int i = 0;
			lu.clear();
			lu.assign(y1 * x1, 0);
			for (int y2 = y1; y2 > 0; y2--) 
				for (int x2 = x1; x2 > 0; x2--) 
					lu[i++] = twoPointToIncome(y2, x2, y1, x1);

			i = 0;
			rd.clear();
			rd.assign((n - y1) * (n - x1), 0);
			for (int y2 = y1 + 1; y2 <= n; y2++)
				for (int x2 = x1 + 1; x2 <= n; x2++)
					rd[i++] = twoPointToIncome(y1 + 1, x1 + 1, y2, x2);

			sort(lu.begin(), lu.end());
			sort(rd.begin(), rd.end());
			int l = 0, r = 0, ri, cnt;
			while (l != lu.size() && r != rd.size()) {
				if (lu[l] == rd[r]) { // 같은경우 r에 몇개있는지 새보고 더한다음 l을 올림
					ri = r;
					cnt = 1;
					while (ri + cnt != rd.size() && rd[ri + cnt] == lu[l]) cnt++;
					answer += cnt;
					l++;
				}
				else if (lu[l] > rd[r])	r++;
				else l++;
			}
			//////////////////////////////
			i = 0;
			ld.clear();
			ld.assign((n - y1) * x1, 0);
			for (int y2 = y1 + 1; y2 <= n; y2++)
				for (int x2 = x1; x2 > 0; x2--)
					ld[i++] = twoPointToIncome(y1 + 1, x2, y2, x1);

			i = 0;
			ru.clear();
			ru.assign(y1 * (n - x1), 0);
			for (int y2 = y1; y2 > 0; y2--)
				for (int x2 = x1 + 1; x2 <= n; x2++)
					ru[i++] = twoPointToIncome(y2, x1 + 1, y1, x2);

			sort(ld.begin(), ld.end());
			sort(ru.begin(), ru.end());
			l = 0, r = 0, ri, cnt;
			while (l != ld.size() && r != ru.size()) {
				if (ld[l] == ru[r]) { // 같은경우 r에 몇개있는지 새보고 더한다음 l을 올림
					ri = r;
					cnt = 1;
					while (ri + cnt != ru.size() && ru[ri + cnt] == ld[l]) cnt++;
					answer += cnt;
					l++;
				}
				else if (ld[l] > ru[r])	r++;
				else l++;
			}
		}

	printf("%d", answer);
}
