var input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0]*input[1]

input = readLine()!.split(separator: " ").map { Int($0)! }
print("\(input[0]-a) \(input[1]-a) \(input[2]-a) \(input[3]-a) \(input[4]-a)")