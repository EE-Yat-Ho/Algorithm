#include <stdio.h>
#include <vector>
#include <cmath>
using namespace std;

int main() {
	int k, reader, sum = 0;
	vector<int> firstVector;
	int Acc;
	int back1, back2;

	scanf("%d", &k);
	for (int i = 0; i < pow(2, k + 1) - 2; i++) {
		scanf("%d", &reader);
		sum += reader;
		firstVector.push_back(reader);
	}
	while (k != 0) {
		for (int i = 0; i < pow(2, k); i += 2) {
			back1 = firstVector.back();
			firstVector.pop_back();
			back2 = firstVector.back();
			firstVector.pop_back();
			Acc = back1 - back2;
			if (Acc > 0) {
				sum += Acc;
				if (firstVector.size() != 0) {
					firstVector[firstVector.size() / 2 - 1] += back1;
				}
			}
			else if (Acc < 0) {
				sum -= Acc;
				if (firstVector.size() != 0) {
					firstVector[firstVector.size() / 2 - 1] += back2;
				}
			}
			else {
				if (firstVector.size() != 0) {
					firstVector[firstVector.size() / 2 - 1] += back2;
				}
			}
		}
		k--;
	}
	printf("%d", sum);
	return 0;
}