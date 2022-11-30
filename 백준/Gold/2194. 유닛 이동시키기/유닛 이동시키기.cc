#include <iostream>
#include <vector>
#include <queue>
using namespace std;

int main() {
	int n, m, a, b, k;
	cin >> n >> m >> a >> b >> k;

	vector<vector<int> > map(n - a + 3, vector<int>(m - b + 3, 2000000000));
	map[0].assign(m - b + 3, -1);
	map[n - a + 2].assign(m - b + 3, -1);
	for (int i = 1; i < n - a + 2; i++) {
		map[i][0] = -1;
		map[i][m - b + 2] = -1;
	}

	int wallX, wallY;
	while (k--) {
		cin >> wallY >> wallX;
		for (int i = 0; i < a; i++) {
			for (int j = 0; j < b; j++) {
				if (wallY + i - a + 1 < 1 || wallX + j - b + 1 < 1)
					continue;
				else if (wallY + i - a + 1 > n - a + 1 || wallX + j - b + 1 > m - b + 1)
					break;
				map[wallY + i - a + 1][wallX + j - b + 1] = -1;
			}
		}
	}

	int sy, sx, ey, ex;
	cin >> sy >> sx >> ey >> ex;
	if (ey > n - a + 1 || ex > m - b + 1){
		cout << "-1";
		return 0;
	}

	map[sy][sx] = 0;
	queue<pair<int, int> > q;
	q.push(make_pair(sy, sx));
	int y, x;
	while(!q.empty()){
		y = q.front().first;
		x = q.front().second;
		q.pop();
		if (y == ey && x == ex) break;
		if (map[y][x] != 2000000000 && map[y][x] > n * m) break;

		if (map[y - 1][x] != -1 && map[y - 1][x] > map[y][x] + 1) {
			map[y - 1][x] = map[y][x] + 1;
			q.push(make_pair(y - 1, x));
		}
		if (map[y + 1][x] != -1 && map[y + 1][x] > map[y][x] + 1) {
			map[y + 1][x] = map[y][x] + 1;
			q.push(make_pair(y + 1, x));
		}
		if (map[y][x - 1] != -1 && map[y][x - 1] > map[y][x] + 1) {
			map[y][x - 1] = map[y][x] + 1;
			q.push(make_pair(y, x - 1));
		}
		if (map[y][x + 1] != -1 && map[y][x + 1] > map[y][x] + 1) {
			map[y][x + 1] = map[y][x] + 1;
			q.push(make_pair(y, x + 1));
		}
	}
	if(map[ey][ex] != 2000000000)
		cout << map[ey][ex];
	else
		cout << "-1";
}