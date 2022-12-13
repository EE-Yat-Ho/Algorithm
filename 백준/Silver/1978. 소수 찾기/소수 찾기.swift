import Foundation

var arr = Array(repeating: true, count: 1001)
arr[1] = false

for i in 2...1000 {
    if arr[i] {
        var temp = i * 2
        while temp < 1001 {
            arr[temp] = false
            temp += i
        }
    }
}


let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }

print(input.filter { arr[$0] }.count)

