#include <stdio.h>
#pragma warning(disable:4996)
int arr[2000001];
int main() {
	int n, r;
	scanf("%d", &n);
	for (int i = 0; i < n; i++) {
		scanf("%d", &r);
		arr[r]++;
	}
	long long cnt, answer = 1; // 20만개 학교에 200만명이 다 참여할 수 있어서 롱롱
	for (int i = 1; i < 2000001; i++) {
		cnt = 0;
		for (int j = i; j < 2000001; j += i) {
			cnt += arr[j];
		}
		if (cnt > 1)
			answer = answer > cnt * i ? answer : cnt * i;
	}
	printf("%lld", answer);
}