let N = Int(readLine()!)!

for i in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    print("Case #\(i + 1): \(input[0] + input[1])")
}
