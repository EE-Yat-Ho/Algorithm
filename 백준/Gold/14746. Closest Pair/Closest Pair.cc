#include <iostream>
#include <stdio.h>
#include <algorithm>

using namespace std;

int findClosest(int arr[], int target, int size, bool& count) {//start end mid 가 배열범위 넘는경우 생각해야함;;
	int start = 0;
	int end = size - 1;
	int mid = (start + end) / 2;
	int closest;

	if (arr[0] >= target) {
		return arr[0] - target;
	}
	if (arr[end] <= target) {
		return target - arr[end];
	}

	while (end - start >= 0) {
		if (arr[mid] == target) {
			return 0;
		}
		else if (arr[mid] > target) {
			end = mid - 1;
			closest = arr[mid] - target;
		}
		else {
			start = mid + 1;
			closest = target - arr[mid];
		}
		mid = (start + end) / 2;
	}

	if (arr[mid] < target) {
		if (target - arr[mid] < arr[mid + 1] - target) {
			return target - arr[mid];
		}
		else if (target - arr[mid] > arr[mid + 1] - target) {
			return arr[mid + 1] - target;
		}
		else {
			count = true;
			return arr[mid + 1] - target;
		}
	}
	else {
		if (target - arr[mid - 1] < arr[mid] - target) {
			return target - arr[mid - 1];
		}
		else if (target - arr[mid - 1] > arr[mid] - target) {
			return arr[mid] - target;
		}
		else {
			count = true;
			return arr[mid] - target;
		}
	}
}

int main(){
	int answerCount = 1;
	int N, M, Py, Qy, Px, Qx;
	int reader;
	int mingapX = 0, newgapX, gapY = 0;
	int control = 0;
	int arr[500000];
	int closest, oldClosest;
	bool two = false;
	//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ┐P, Q 점갯수 받기
	scanf("%d %d", &N, &M);
	//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ┘
	//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ┐Py, Qy 값 받기
	scanf("%d %d", &Py, &Qy);
	//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ┘
	//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ┐Y값 차이 구하기
	if (Py >= Qy) {
		gapY = Py - Qy;
	}
	else {
		gapY = Qy - Py;
	}
	//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ┘
	//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ┐X값 배열 채우기
	for (int i = 0; i < N;i++) {
		scanf("%d", &arr[i]);
	}
	//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ┘
	//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ┐X값 배열 정렬
	sort(arr, arr + N);
	//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ┘
	scanf("%d", &reader);
	closest = findClosest(arr, reader, N, two);
	if (two) {
		answerCount = 2;
	}
	oldClosest = closest;
	//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ┐스캔 시작
	for (int i = 1; i < M; i++) {
		scanf("%d", &reader);
		two = false;
		closest = findClosest(arr, reader, N, two);
		if (closest < oldClosest) {
			answerCount = 1;
			oldClosest = closest;
			if (two) {
				answerCount = 2;
			}
		}
		else if (closest == oldClosest) {
			answerCount++;
			if (two) {
				answerCount++;
			}
		}
	}
	//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ┘
	//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ┐
	printf("%d %d", oldClosest + gapY, answerCount);
	//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ┘
	return 0;
}