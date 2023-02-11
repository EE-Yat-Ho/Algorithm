import Foundation
let n = Int(readLine()!)!
var str = String(repeating: "*", count: n)
for _ in 0..<n {
    print(str)
    str.removeLast()
}