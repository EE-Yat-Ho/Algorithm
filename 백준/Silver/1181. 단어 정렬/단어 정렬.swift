import Foundation

let N = Int(readLine()!)!

var dict: [String: Bool] = [:]

for _ in 0..<N {
    dict[readLine()!] = true
}
var arr = dict.keys.map { $0 }

arr.sorted {
    if $0.count != $1.count {
        return $0.count < $1.count
    } else {
        return $0 < $1
    }
}.forEach {
    print($0)
}
