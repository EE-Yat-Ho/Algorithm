
let N = Int(readLine()!)!

let input = readLine()!.split(separator: " ").map { Int($0)! }
let sum = input.reduce(0, { $0 + $1 })
let max = input.max()!

let average = Double(sum) / Double(N)
print(average / Double(max) * 100.0)
