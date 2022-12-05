

let input = readLine()!.split(separator: " ").map { Int($0)! }

let N = input[0]
let M = input[1]
let R = input[2]

var children: [[Int]] = Array(repeating: [], count: N)

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let parent = input[0] - 1
    let child = input[1] - 1
    
    children[parent].append(child)
    children[child].append(parent)
}

var visited = Array(repeating: false, count: N)
var answer = Array(repeating: 0, count: N)
var count = 1
dfs(R - 1)

func dfs(_ start: Int) {
    visited[start] = true
    answer[start] = count
    count += 1
    children[start].sort()
    children[start].forEach {
        if !visited[$0] { dfs($0) }
    }
}

answer.forEach { print($0) }
