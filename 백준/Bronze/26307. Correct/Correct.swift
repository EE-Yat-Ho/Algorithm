let input = readLine()!.split(separator: " ").map { Int($0)! }
print((input[0] - 9)*60 + input[1])