import Foundation

// 무조건 지나는 점을 찾고, 걔를 root로, 자식들 dfs해서 젤 큰 자식 2개 더하면 됨
// 무조건 지나는 점을 찾는게....

// 가장 큰 지름을 나타내는 두 끝 점을 찾는다.
// 어느점에서 시작하든 제일 멀리있는 점은 가장 큰 지름을 나타내는 두 끝 점 중 하나이다.
// 그 점에서 다시 제일 멀리있는 점을 찾으면 그게 지름이다.


let n = Int(readLine()!)!
var arr: [[(Int, Int)]] = Array(repeating: [], count: n + 1)

for _ in 1...n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let start = input[0]
    
    for i in 1..<(input.count / 2) {
        let end = input[i * 2 - 1]
        let weight = input[i * 2]
        
        arr[start].append((end, weight))
    }
}


var visited: [Bool] = Array(repeating: false, count: n + 1)
var found = (0, 0)
dfs(1, 0)

visited = Array(repeating: false, count: n + 1)
dfs(found.0, 0)

print(found.1)

func dfs(_ parent: Int, _ weight: Int) {
    
    visited[parent] = true
    arr[parent].forEach { child in
        if !visited[child.0] {
            dfs(child.0, child.1 + weight)
        }
    }
    
    // 리프 노드임
    if arr[parent].count == 1 {
        if found.1 < weight {
            found = (parent, weight)
        }
    }
}
