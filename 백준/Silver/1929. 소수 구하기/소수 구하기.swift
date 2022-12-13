import Foundation

var arr = Array(repeating: true, count: 1000001)
arr[1] = false

for i in 2...1000000 {
    if arr[i] {
        var temp = i * 2
        while temp < 1000001 {
            arr[temp] = false
            temp += i
        }
    }
}

let input = readLine()!.split(separator: " ").map { Int($0)! }

for i in input[0]...input[1] {
    if arr[i] { print(i) }
}

