let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = Int(readLine()!)!

let second = (input[0]*3600 + input[1]*60 + input[2] + n)
print("\(second / 3600 % 24) \(second / 60 % 60) \(second % 60)")
