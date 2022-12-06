let X = Int(readLine()!)!
let N = Int(readLine()!)!

var sum = 0
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    sum += input[0] * input[1]
}

print(X == sum ? "Yes" : "No")
