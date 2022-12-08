let N = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int($0)! }
let targetNum = Int(readLine()!)!
print(nums.filter { $0 == targetNum } .count )
