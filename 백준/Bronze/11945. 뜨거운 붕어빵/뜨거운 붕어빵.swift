let input = readLine()!.split(separator: " ").map { Int($0)! }
for _ in 0..<input[0] {
    print(String(readLine()!.reversed()))
}