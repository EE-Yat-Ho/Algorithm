import Foundation

let N = Int(readLine()!)!

var arr = Array(repeating: 0, count: N)

for i in 0..<N {
    arr[i] = Int(readLine()!)!
}

print(arr.sorted().map{"\($0)"}.joined(separator: "\n"))
