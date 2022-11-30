#include <string>
#include <iostream>
using namespace std;
int main() {
	int n;
	cin >> n;
	string s, t;
	getline(cin, s); // \n
	
	int s_one, t_one, qm_one, qm_zero, one_zero, zero_one, answer;
	for (int i = 1; i <= n; i++) {
		getline(cin, s);
		getline(cin, t);

		s_one = 0;
		t_one = 0;
		qm_one = 0;
		qm_zero = 0;
		one_zero = 0;
		zero_one = 0;
		answer = 0;
		for (int j = 0; j < s.length(); j++) {
			if (s[j] == '1') {
				s_one++;
				if (t[j] == '1')
					t_one++;
				else
					one_zero++;
			}
			else if (s[j] == '?') {
				if (t[j] == '1') {
					t_one++;
					qm_one++;
				}
				else
					qm_zero++;
			}
			else // s[j] == 0
				if (t[j] == '1') {
					t_one++;
					zero_one++;
				}
		}

		answer = qm_one + qm_zero;
		if (t_one < s_one)
			cout << "Case " << i << ": -1\n";
		else if (t_one == s_one)
			cout << "Case " << i << ": " << answer + one_zero << "\n";
		else {
			int nc = t_one - s_one;
			nc -= qm_one;
			if (nc <= 0) {
				answer += one_zero;
				cout << "Case " << i << ": " << answer << "\n";
				continue;
			}
			nc -= zero_one;
			if (nc <= 0) {
				answer += zero_one + nc;
				answer += one_zero;
				cout << "Case " << i << ": " << answer << "\n";
				continue;
			}
		}
	}
}