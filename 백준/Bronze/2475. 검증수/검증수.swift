import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

print(input.reduce(0, { $0 + (($1 * $1) % 10) }) % 10)
