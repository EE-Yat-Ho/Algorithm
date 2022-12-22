import Foundation

// bfs로 1씩 늘리면서 쭉 퍼트린다. 7569번 3차원 먼저 풀고와서 날먹~

let input = readLine()!.split(separator: " ").map { Int($0)! }
let M = input[0]
let N = input[1]

var arr = Array(repeating: Array(repeating: 0, count: M), count: N)
var queue: [(Int, Int, Int)] = [] // (_ n: Int,_ m: Int,_ day: Int)


for n in 0..<N {
    arr[n] = readLine()!.split(separator: " ").map { Int($0)! }
    
    for m in 0..<M {
        if arr[n][m] == 1 {
            queue.append((n,m,1))
        }
    }
}

// bfs
var ptr = 0
while ptr < queue.count {

    let tuple = queue[ptr]
    let n = tuple.0
    let m = tuple.1
    let day = tuple.2
    
    if n > 0 {
        if arr[n - 1][m] == 0 {
            arr[n - 1][m] = day + 1
            queue.append((n - 1, m, day + 1))
        }
    }
    if n < N - 1 {
        if arr[n + 1][m] == 0 {
            arr[n + 1][m] = day + 1
            queue.append((n + 1, m, day + 1))
        }
    }
    if m > 0 {
        if arr[n][m - 1] == 0 {
            arr[n][m - 1] = day + 1
            queue.append((n, m - 1, day + 1))
        }
    }
    if m < M - 1 {
        if arr[n][m + 1] == 0 {
            arr[n][m + 1] = day + 1
            queue.append((n, m + 1, day + 1))
        }
    }
    
    ptr += 1
}


var answer = 0
var canComplete = true
arr.flatMap { $0 }
    .forEach {
        if $0 == 0 { canComplete = false }
        if answer < $0 { answer = $0 }
}

print(canComplete ? (answer - 1) : -1)
