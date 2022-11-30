#include <string>
#include <iostream>
#include <vector>
#include <map>
#include <algorithm>
using namespace std;

class folder {
public:
	string name;
	folder *p;
	vector<folder*> c;
	int sorted = 0;
	int depth = 0;
	folder() {};
	folder(string name, folder* p) {
		this->name = name;
		this->p = p;
		this->depth = p->depth + 1;
	};
	folder(string name, folder* p, int depth) {
		this->name = name;
		this->p = p;
		this->depth = depth;
	};
};

folder* find(folder* a, string name) {
	for (int i = 0; i < a->c.size(); i++)
		if (a->c[i]->name == name) return a->c[i];
	return NULL;
}

folder* insert(folder* a, string name) {
	folder* newFolder = new folder(name, a);
	a->c.push_back(newFolder);
	return newFolder;
}

bool cmp(folder* a, folder* b) {
	return a->name < b->name;
}

void improveDFS(folder* now){
	if (now->name != "root ") {
		for (int i = 1; i < now->depth; i++) printf(" ");
		cout << now->name << "\n";
	}
	if (!now->sorted)
		sort(now->c.begin(), now->c.end(), cmp);
	for (int i = 0; i < now->c.size(); i++) {
		improveDFS(now->c[i]);
	}
}

int main() {
	int n;
	cin >> n;

	folder root("root ", NULL, 0);
	folder *now, *next;
	string r, buf;
	getline(cin, r);
	while (n--) {
		getline(cin, r);
		now = &root;
		buf = "";
		for (int i = 0; i <= r.length(); i++) {
			if (i == r.length() || r[i] == '\\') {
				if (!(next = find(now, buf)))
					next = insert(now, buf);
				now = next;
				buf = "";
			}
			else {
				buf += r[i];
			}
		}
	}
	now = &root;
	improveDFS(now);
}