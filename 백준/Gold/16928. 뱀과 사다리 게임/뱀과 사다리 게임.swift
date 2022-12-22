import Foundation

//let input = readLine()!.split(separator: " ").map { Int($0)! }
//let n = Int(readLine()!)!

// 각 지점 훑으면서 1~6 나왔을 때 갈 수 있는 곳 기록
// 뱀있는 곳은 무조건 안밟기로. 뱀 밟아서 빠른 경우는 없음.
// 많이 뒤로가는건 당연히 x. 1만큼 뒤로가는건 주사위를 1만큼 덜 굴리는 케이스가 커버함
// 만약 벽이 있고, 6칸 짜리 벽으로 구역을 나누면 뱀으로만 갈 수 있는 구역이 생길수있음. 하지만 벽이 없으니 괜찮음.

// 아.. 사다리타고 갔는데 바로 뱀인 케이스가 있다. 고려하기.
// 연속으로 가능하네..

// 아 도달하지 못한 곳을 생각 못했네

// bfs 해야하네.. 벽 만들어놓고, 벽 이후에서 뒷점프 후 앞점프해야만 할 수 있는 경우를 인덱스 순서로 처리하면 못함.

// visited 처리 안하니까 거어어업나 오래걸림

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var visited = Array(repeating: 0, count: 110)
var jump: [Int: Int] = [:]

for _ in 0..<N + M {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    jump[input[0]] = input[1]
}

var queue: [(Int, Int)] = [(1, 0)] // (_ idx: Int,_ count: Int)

//7 13 19(58) 61(30) 36
//42 48 54 57(80) 86
//92 98 100

//14 0
//21 1
//22 1
//23 1
//24 1
//25 1
//26 1
//61 30
//62 30
//63 30
//64 30
//65 30
//66 30
//19 58
//57 80

// bfs
var ptr = 0
while ptr < queue.count {
    
    let tuple = queue[ptr]
    // print(tuple)
    ptr += 1
    let idx = tuple.0
    let count = tuple.1

    if idx == 100 {
        print(count)
        break
    }
    
    for dice in 1...6 {
        
        if var jumpedIdx = jump[idx + dice] {
            
            // 연속 점프 가능. 마지막 도착지점만 기록하면 됨.
            while let j = jump[jumpedIdx] {
                // 무한루프 방지
                if visited[jumpedIdx] == -2 { break }
                visited[jumpedIdx] = -2
                
                jumpedIdx = j
            }
            
            if visited[jumpedIdx] == -2 { continue }
            visited[jumpedIdx] = -2
            
            queue.append((jumpedIdx, count + 1))
        } else {
            
            if visited[idx + dice] == -2 { continue }
            visited[idx + dice] = -2
            
            queue.append((idx + dice, count + 1))
        }
    }
}