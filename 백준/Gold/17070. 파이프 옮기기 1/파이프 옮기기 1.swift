let n = Int(readLine()!)!

var arr = Array(repeating: [(0,0,0)], count: n + 1)
for i in 0..<n {
    arr[i] = readLine()!.split(separator: " ").map {
        Int($0)! == 0 ? (0,0,0) : (-1,-1,-1)
    }
    arr[i].append((-1,-1,-1))
}
arr[n] = Array(repeating: (-1,-1,-1), count: n + 1)

// 가로 세로 대각
arr[0][0] = (0,0,0)
arr[0][1] = (1,0,0)

for y in 0..<n {
    for x in 0..<n {
        
        let t = arr[y][x]
        
        // 가로 상태
        if t.0 > 0 {
            // 가로 증가
            if arr[y][x+1].0 != -1 {
                arr[y][x+1].0 += t.0
            }
            // 대각 증가
            if arr[y][x+1].0 != -1,
               arr[y+1][x].0 != -1,
               arr[y+1][x+1].0 != -1 {
                arr[y+1][x+1].2 += t.0
            }
        }
        
        // 세로 상태
        if t.1 > 0 {
            // 세로 증가
            if arr[y+1][x].1 != -1 {
                arr[y+1][x].1 += t.1
            }
            // 대각 증가
            if arr[y][x+1].1 != -1,
               arr[y+1][x].1 != -1,
               arr[y+1][x+1].1 != -1 {
                arr[y+1][x+1].2 += t.1
            }
        }
        
        // 대각선 상태
        if t.2 > 0 {
            // 가로 증가
            if arr[y][x+1].0 != -1 {
                arr[y][x+1].0 += t.2
            }
            // 세로 증가
            if arr[y+1][x].1 != -1 {
                arr[y+1][x].1 += t.2
            }
            // 대각 증가
            if arr[y][x+1].1 != -1,
               arr[y+1][x].1 != -1,
               arr[y+1][x+1].1 != -1 {
                arr[y+1][x+1].2 += t.2
            }
        }
    }
}

let sum = arr[n-1][n-1].0 + arr[n-1][n-1].1 + arr[n-1][n-1].2
print(sum > 0 ? sum : 0)
