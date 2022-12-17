import Foundation

let n = Int(readLine()!)!

var arr: [[Int]] = Array(repeating: [], count: n + 1)
var attacked: [Bool] = Array(repeating: false, count: n + 1)

let t = Int(readLine()!)!

for _ in 1...t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    arr[input[0]].append(input[1])
    arr[input[1]].append(input[0])
}

var answer = -1

dfs(1)

func dfs(_ idx: Int) {
    attacked[idx] = true
    answer += 1
    
    arr[idx].forEach {
        if !attacked[$0] {
            dfs($0)
        }
    }
}

print(answer)