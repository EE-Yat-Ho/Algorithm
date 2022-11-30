#include<stdio.h>
using namespace std;

class node {
public:
	long long gcd;
	int left_end;
	node *next;
	node *pre;

	node(long long g, int l, node* n, node* p){
		gcd = g;
		left_end = l;
		next = n;
		pre = p;
	}
};

node *H, *T;

void del(node* n) {
	if (H == n && T == n) {
		H = NULL;
		T = NULL;
	}
	else if (H == n) {
		H = n->next;
		n->next->pre = NULL;
	}
	else if (T == n) {
		T = n->pre;
		n->pre->next = NULL;
	}
	else {
		n->next->pre = n->pre;
		n->pre->next = n->next;
	}
	delete(n);
}

void insert(long long g, int l) {
	node* newNode = new node(g, l, NULL, NULL);
	if (H == NULL) { //처음
		H = newNode;
		T = newNode;
	}
	else {
		T->next = newNode;
		newNode->pre = T;
		T = newNode;
	}
}

long long t;
long long getGCD(long long a, long long b) {
	while (a) {
		b %= a;
		t = a;
		a = b;
		b = t;
	}
	return b;
}

node* now;
int main() {
	int t, n;
	long long r, answer;
	scanf("%d", &t);
	while (t--) {
		scanf("%d", &n);
		answer = 0;
		for (int i = 1; i <= n; i++) {
			scanf("%lld", &r);
			now = H;
			while (now) {
				now->gcd = getGCD(now->gcd, r);
				if (now != H && now->gcd <= now->pre->gcd) {
					now = now->pre;
					del(now->next);
				}
				else
					answer = answer > now->gcd * (i - now->left_end + 1) ? answer : now->gcd * (i - now->left_end + 1);
				now = now->next;
			}
			if (H == NULL || r > T->gcd) {
				insert(r, i);
				answer = answer > r ? answer : r;
			}
		}
		printf("%lld\n", answer);
		while (H)
			del(T);
	}
}