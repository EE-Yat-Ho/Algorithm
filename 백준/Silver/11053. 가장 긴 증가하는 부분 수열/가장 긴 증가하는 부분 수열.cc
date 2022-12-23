#include <iostream> 
#include <algorithm>
#include <vector>
#define INF	0xFFFF

using namespace std;

int main()
{
	vector<int> v;
	v.push_back(-INF);


	int n;
	cin >> n;
	int x;

	for (int i = 0; i < n; ++i)
	{
		cin >> x;
		if (x > v.back())
		{
			if (v.back() == -INF) v.clear();
			v.push_back(x);
		}
		else
		{
			auto it = lower_bound(v.begin(), v.end(), x);
			*it = x;
		}
	}

	cout << v.size() << endl;

	return 0;
}