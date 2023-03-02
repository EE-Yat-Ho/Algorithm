let input = readLine()!.split(separator: " ").map { Int($0)! }
let diff = input[1] - input[0]
let v = input[2]

let answer = diff / v + (diff % v == 0 ? 0 : 1)
print(answer)