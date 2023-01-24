let input = readLine()!.split(separator: " ").map { Int($0)! }
let N1 = input[0]
let N2 = input[1]
let N12 = input[2]

print("\((N1 + 1)*(N2 + 1)/(N12 + 1) - 1 )")