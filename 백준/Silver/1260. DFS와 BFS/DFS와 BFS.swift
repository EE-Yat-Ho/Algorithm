import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let dotCount = input[0]
let lineCount = input[1]
let startDot = input[2]

var lineArr: [[Int]] = Array(repeating: [], count: dotCount + 1)

for _ in 1...lineCount {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    lineArr[input[0]].append(input[1])
    lineArr[input[1]].append(input[0])
}

for i in 0...dotCount {
    lineArr[i].sort()
}


var visited: [Bool] = Array(repeating: false, count: dotCount + 1)
var answer = ""
dfs(startDot)

func dfs(_ idx: Int) {
    visited[idx] = true
    answer += "\(idx) "
    
    lineArr[idx].forEach {
        if !visited[$0] {
            dfs($0)
        }
    }
}

answer.removeLast()
print(answer)


visited = Array(repeating: false, count: dotCount + 1)
var queue = [startDot]

answer = ""
visited[startDot] = true

// bfs
while !queue.isEmpty {
    
    let idx = queue.first!
    queue.removeFirst()
    answer += "\(idx) "
    
    lineArr[idx].forEach {
        if !visited[$0] {
            visited[$0] = true
            queue.append($0)
        }
    }
}

answer.removeLast()
print(answer)