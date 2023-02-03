let cnt = readLine()!.split(separator: " ")
    .map { Int($0)! }
    .filter { $0 == 0 || $0 == 1 }
    .count
print(cnt == 8 ? "S" : "F")