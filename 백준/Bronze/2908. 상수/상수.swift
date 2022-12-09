import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

var a = input[0]
var b = input[1]

var temp = 0
temp += (a % 10) * 100
a /= 10
temp += (a % 10) * 10
a /= 10
temp += a

a = temp

temp = 0
temp += (b % 10) * 100
b /= 10
temp += (b % 10) * 10
b /= 10
temp += b

b = temp

print(a > b ? a : b)
