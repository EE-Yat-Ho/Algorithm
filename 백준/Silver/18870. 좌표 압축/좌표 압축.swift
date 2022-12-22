
import Foundation

// sort 하고, 작은거부터 인덱싱

let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }

let sorted = input.sorted()

var dict: [Int: Int] = [sorted.first!: 0]

var cnt = 0
for i in 1..<n {
    if sorted[i] != sorted[i - 1] {
        cnt += 1
        dict[sorted[i]] = cnt
    }
}

print( input.map { "\(dict[$0]!)" }.joined(separator: " ") )
