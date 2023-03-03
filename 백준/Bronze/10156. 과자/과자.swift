let input = readLine()!.split(separator: " ").map { Int($0)! }
let answer = input[0] * input[1] - input[2]

print(answer > 0 ? answer : 0)