import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var arr: [[Int]] = Array(repeating: [], count: N)

for n in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    arr[n] = input
}
for n in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    for m in 0..<M {
        arr[n][m] += input[m]
    }
}

arr.forEach {
    print($0.map { "\($0)" }.joined(separator: " "))
}
