_ = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }
let Y = input.reduce(0) { 10 + $0 + ($1 / 30) * 10 }
let M = input.reduce(0) { 15 + $0 + ($1 / 60) * 15 }
if Y == M { print("Y M \(Y)") }
else { print(Y < M ? "Y \(Y)" : "M \(M)") }
