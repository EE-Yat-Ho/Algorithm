// 처음부터 해당부분까지 부분합을 모두 구해둠

// 부분합은
// 위쪽 + 왼쪽 - 위왼쪽 + 여기값

// 답은
// 원래 정사각형에서
// 위쪽 직사각형 빼고
// 왼쪽 직사각형 빼고
// 작은 정사각형 더하기

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var arr = Array(repeating: Array(repeating: 0, count: 1), count: N + 1)

arr[0].append(contentsOf: Array(repeating: 0, count: N))
for i in 1...N {
    arr[i].append(contentsOf: readLine()!.split(separator: " ").map { Int($0)! } )
}

for i in 1...N {
    for j in 1...N {
        arr[i][j] += arr[i - 1][j] + arr[i][j - 1] - arr[i - 1][j - 1]
    }
}

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x1 = input[0]
    let y1 = input[1]
    let x2 = input[2]
    let y2 = input[3]
    
    print(arr[x2][y2] - arr[x2][y1 - 1] - arr[x1 - 1][y2] + arr[x1 - 1][y1 - 1])
}
