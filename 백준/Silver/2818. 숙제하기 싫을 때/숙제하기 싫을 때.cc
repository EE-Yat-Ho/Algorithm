#include<stdio.h>
int dice[6] = { 5, 4, 6, 3, 1, 2 };

int temp;
void rollingRight() { // 0, 5는 그대로 2->1, 3->2, 4->3, 1->4
	temp = dice[1];
	dice[1] = dice[2];
	dice[2] = dice[3];
	dice[3] = dice[4];
	dice[4] = temp;
}

void rollingLeft() { // 0, 5는 그대로 1->2, 2->3, 3->4, 4->1
	temp = dice[4];
	dice[4] = dice[3];
	dice[3] = dice[2];
	dice[2] = dice[1];
	dice[1] = temp;
}

void rollingDown() { // 1, 3은 그대로 2->0 0->4 4->5 5->2
	temp = dice[5];
	dice[5] = dice[4];
	dice[4] = dice[0];
	dice[0] = dice[2];
	dice[2] = temp;
}

int main() {
	int r, c, right = 1;
	long long answer = 0;
	scanf("%d %d", &r, &c);
	for (int i = 0; i < r; i++) {
		answer += dice[4];
		answer += (c - 1) / 4 * 14;
		for (int j = 0; j < (c - 1) % 4; j++) {
			if (right)
				rollingRight();
			else 
				rollingLeft();
			answer += dice[4];
		}
		rollingDown();
		right = right ? 0 : 1;
	}
	printf("%lld", answer);
}