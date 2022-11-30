#include <bits/stdc++.h>
using namespace std;
 
int N, W, L;
 
int main()
{
    scanf("%d%d%d", &N, &W, &L);
    int cnt = 0, sum = 0, ans = 0;
    queue <int> que;
    for (int i=1;i<=N;i++){
        int w; scanf("%d", &w);
        for (;;){
            ans++;
            if (cnt == W) cnt--, sum -= que.front(), que.pop();
            if (sum+w > L)
                cnt++, sum += 0, que.push(0);
            else{
                cnt++, sum += w, que.push(w);
                break;
            }
        }
    }
    printf("%d\n", ans+W);
    return 0;
}