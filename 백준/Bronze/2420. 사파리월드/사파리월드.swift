import Foundation

let input = readLine()!.split(separator: " ").map { Int64($0)! }
print(abs(input[0] - input[1]))