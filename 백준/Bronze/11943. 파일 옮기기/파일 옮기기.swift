var input = readLine()!.split(separator: " ").map { Int($0)! }
var a = input[0]
var b = input[1]
input = readLine()!.split(separator: " ").map { Int($0)! }
a += input[1]
b += input[0]
print(a < b ? a : b)
