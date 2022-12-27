import Foundation

let n = Int(readLine()!)!
var arr: [[Int]] = Array(repeating: [], count: n + 1)
var answer: [Int] = Array(repeating: -1, count: n + 1)

for _ in 1..<n {
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let start = input[0]
    let end = input[1]
    
    arr[start].append(end)
    arr[end].append(start)
}

dfs(1)
func dfs(_ parent: Int) {
    arr[parent].forEach { child in
        if answer[parent] != child {
            answer[child] = parent
            dfs(child)
        }
    }
}

print(answer[2...].map{String($0)}.joined(separator: "\n"))