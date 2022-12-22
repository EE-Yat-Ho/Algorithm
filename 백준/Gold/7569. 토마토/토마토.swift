import Foundation

// bfs로 1씩 늘리면서 쭉 퍼트린다

let input = readLine()!.split(separator: " ").map { Int($0)! }
let M = input[0]
let H = input[1]
let N = input[2]

var arr = Array(repeating: Array(repeating: Array(repeating: 0, count: M), count: N), count: H)
var queue: [(Int, Int, Int, Int)] = [] // (_ h: Int,_ n: Int,_ m: Int,_ day: Int)


for n in 0..<N {
    for h in 0..<H {
        arr[h][n] = readLine()!.split(separator: " ").map { Int($0)! }
        
        for m in 0..<M {
            if arr[h][n][m] == 1 {
                queue.append((h,n,m,1))
            }
        }
    }
}

// bfs
var ptr = 0
while ptr < queue.count {

    let tuple = queue[ptr]
    let h = tuple.0
    let n = tuple.1
    let m = tuple.2
    let day = tuple.3
    
    
    if h > 0 {
        if arr[h - 1][n][m] == 0 {
            arr[h - 1][n][m] = day + 1
            queue.append((h - 1, n, m, day + 1))
        }
    }
    if h < H - 1 {
        if arr[h + 1][n][m] == 0 {
            arr[h + 1][n][m] = day + 1
            queue.append((h + 1, n, m, day + 1))
        }
    }
    if n > 0 {
        if arr[h][n - 1][m] == 0 {
            arr[h][n - 1][m] = day + 1
            queue.append((h, n - 1, m, day + 1))
        }
    }
    if n < N - 1 {
        if arr[h][n + 1][m] == 0 {
            arr[h][n + 1][m] = day + 1
            queue.append((h, n + 1, m, day + 1))
        }
    }
    if m > 0 {
        if arr[h][n][m - 1] == 0 {
            arr[h][n][m - 1] = day + 1
            queue.append((h, n, m - 1, day + 1))
        }
    }
    if m < M - 1 {
        if arr[h][n][m + 1] == 0 {
            arr[h][n][m + 1] = day + 1
            queue.append((h, n, m + 1, day + 1))
        }
    }
    
    ptr += 1
}


var answer = 0
var canComplete = true
arr.flatMap { $0 }
    .flatMap { $0 }
    .forEach {
        if $0 == 0 { canComplete = false }
        if answer < $0 { answer = $0 }
}

print(canComplete ? (answer - 1) : -1)
