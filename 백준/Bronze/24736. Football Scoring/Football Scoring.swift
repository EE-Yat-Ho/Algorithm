var input = readLine()!.split(separator: " ").map { Int($0)! }
let a1 = input[0] * 6 + input[1] * 3 + input[2] * 2 + input[3] + input[4] * 2

input = readLine()!.split(separator: " ").map { Int($0)! }
let a2 = input[0] * 6 + input[1] * 3 + input[2] * 2 + input[3] + input[4] * 2

print("\(a1) \(a2)")