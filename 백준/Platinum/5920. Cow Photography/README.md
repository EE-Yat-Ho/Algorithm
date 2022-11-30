# [Platinum V] Cow Photography - 5920 

[문제 링크](https://www.acmicpc.net/problem/5920) 

### 성능 요약

메모리: 1700 KB, 시간: 20 ms

### 분류

애드 혹(ad_hoc), 정렬(sorting)

### 문제 설명

<p>The cows are in a particularly mischievous mood today!  All Farmer John wants to do is take a photograph of the cows standing in a line, but they keep moving right before he has a chance to snap the picture.</p><p>Specifically, FJ's N (1 <= N <= 20,000) cows are tagged with ID numbers 1...N.  FJ wants to take a picture of the cows standing in a line in a very specific ordering, represented by the contents of an array A[1...N], where A[j] gives the ID number of the jth cow in the ordering.  He arranges the cows in this order, but just before he can press the button on his camera to snap the picture, up to one cow moves to a new position in the lineup. More precisely, either no cows move, or one cow vacates her current position in the lineup and then re-inserts herself at a new position in the lineup.  Frustrated but not deterred, FJ again arranges his cows according to the ordering in A, but again, right before he can snap a picture, up to one cow (different from the first) moves to a new position in the lineup.</p><p>The process above repeats for a total of five photographs before FJ gives up.  Given the contents of each photograph, see if you can reconstruct the original intended ordering A.  Each photograph shows an ordering of the cows in which up to one cow has moved to a new location, starting from the initial ordering in A.  Moreover, if a cow opts to move herself to a new location in one of the photographs, then she does not actively move in any of the other photographs (although she can end up at a different position due to other cows moving, of course).</p>

### 입력 

 <ul><li>Line 1: The number of cows, N (1 <= N <= 20,000).</li><li>Lines 2..5N+1: The next 5N lines describe five orderings, each one a block of N contiguous lines.  Each line contains the ID of a cow, an integer in the range 1..N.</li></ul>

### 출력 

 <ul><li>Lines 1..N: The intended ordering A, one ID per line.</li></ul>

