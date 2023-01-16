let input = readLine()!.split(separator: " ").map { Int($0)! }
print("\(input[2] / input[1]) \(input[2] % input[1])")