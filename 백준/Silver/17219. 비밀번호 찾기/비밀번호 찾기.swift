import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]

var dict: [String: String] = [:]
for _ in 1...n {
    let input = readLine()!.split(separator: " ")
    dict[input[0].description] = input[1].description
}

for _ in 1...m {
    print(dict[readLine()!]!)
}